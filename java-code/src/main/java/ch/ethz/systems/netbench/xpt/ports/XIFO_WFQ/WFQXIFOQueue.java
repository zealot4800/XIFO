package ch.ethz.systems.netbench.xpt.ports.XIFO_WFQ;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Queue;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.locks.ReentrantLock;

import ch.ethz.systems.netbench.core.log.SimulationLogger;
import ch.ethz.systems.netbench.core.network.NetworkDevice;
import ch.ethz.systems.netbench.core.network.Packet;
import ch.ethz.systems.netbench.xpt.ports.XIFO.KLLSketch;
import ch.ethz.systems.netbench.xpt.tcpbase.FullExtTcpPacket;
import ch.ethz.systems.netbench.xpt.tcpbase.PriorityHeader;

public class WFQXIFOQueue implements Queue {

    private final ArrayList<ArrayBlockingQueue<Packet>> queueList;
    private final Map<Integer, Integer> queueBounds;
    private final KLLSketch scheduler;
    private final int ownId;
    private final ReentrantLock lock;

    private final Map<Long, Integer> lastFinishTime;
    private int round;

    public WFQXIFOQueue(long numQueues, long perQueueCapacity, NetworkDevice ownNetworkDevice, long bufferSize, long bufferReduction) {
        this.queueList = new ArrayList<>((int) numQueues);
        this.queueBounds = new HashMap<>();
        this.lock = new ReentrantLock();
        this.ownId = ownNetworkDevice.getIdentifier();
        this.scheduler = new KLLSketch(32, (int) numQueues, 75);
        this.lastFinishTime = new HashMap<>();
        this.round = 0;

        for (int i = 0; i < (int) numQueues; i++) {
            queueList.add(new ArrayBlockingQueue<>((int) perQueueCapacity));
            queueBounds.put(i, 0);
        }
    }

    public int computeRank(Packet p){
        int startTime = this.round;
        if(lastFinishTime.containsKey(p.getFlowId())){
            if((int) lastFinishTime.get(p.getFlowId()) > round){
                startTime = (int)lastFinishTime.get(p.getFlowId());
            }
        }
        int flowWeight = 8;
        int finishingTime_update = startTime + ((int)p.getSizeBit()/flowWeight);
        lastFinishTime.put(p.getFlowId(), finishingTime_update);
        return startTime;
    }

    public void setbackFinishTime(Packet p, int startTime){
        lastFinishTime.put(p.getFlowId(), startTime);
    }

    private void updateRound(Packet packet) {
        PriorityHeader header = (PriorityHeader) packet;
        this.round = (int) header.getPriority();
    }

    @Override
    public boolean offer(Object o) {
        Packet packet = (Packet) o;
        int rank = computeRank(packet);
        lock.lock();
        try {
            ((PriorityHeader) packet).setPriority(rank);
            int queueIdx = scheduler.getQueueIndex(rank);
            boolean enqueued = queueList.get(queueIdx).offer(packet);
            if(enqueued){
                scheduler.insert(rank);
            }
            return enqueued;
        } finally {
            lock.unlock();
        }
    }

    @Override
    public Object poll() {
        lock.lock();
        try {
            for (int q = 0; q < queueList.size(); q++) {
                Packet packet = queueList.get(q).poll();
                if (packet != null) {
                    updateRound(packet);

                    PriorityHeader header = (PriorityHeader) packet;
                    int rank = (int) header.getPriority();

                    if (SimulationLogger.hasRankMappingEnabled()) {
                        SimulationLogger.logRankMapping(this.ownId, rank, q);
                    }

                    if (SimulationLogger.hasQueueBoundTrackingEnabled()) {
                        for (int c = queueList.size() - 1; c >= 0; c--) {
                            SimulationLogger.logQueueBound(this.ownId, c, queueBounds.get(c));
                        }
                    }

                    if (SimulationLogger.hasInversionsTrackingEnabled()) {
                        int countInversions = 0;
                        for (ArrayBlockingQueue<Packet> qList : queueList) {
                            for (Packet pkt : qList) {
                                int r = (int) ((FullExtTcpPacket) pkt).getPriority();
                                if (r < rank) {
                                    countInversions++;
                                }
                            }
                        }
                        if (countInversions != 0) {
                            SimulationLogger.logInversions(this.ownId, rank, countInversions);
                        }
                    }

                    return packet;
                }
            }
            return null;
        } finally {
            lock.unlock();
        }
    }

    @Override
    public int size() {
        lock.lock();
        try {
            int total = 0;
            for (ArrayBlockingQueue<Packet> queue : queueList) {
                total += queue.size();
            }
            return total;
        } finally {
            lock.unlock();
        }
    }

    @Override
    public boolean isEmpty() {
        lock.lock();
        try {
            for (ArrayBlockingQueue<Packet> queue : queueList) {
                if (!queue.isEmpty()) {
                    return false;
                }
            }
            return true;
        } finally {
            lock.unlock();
        }
    }

    @Override public boolean contains(Object o) { return false; }
    @Override public Iterator iterator() { return null; }
    @Override public Object[] toArray() { return new Object[0]; }
    @Override public Object[] toArray(Object[] objects) { return new Object[0]; }
    @Override public boolean add(Object o) { return false; }
    @Override public boolean remove(Object o) { return false; }
    @Override public boolean addAll(Collection collection) { return false; }
    @Override public void clear() { }
    @Override public boolean retainAll(Collection collection) { return false; }
    @Override public boolean removeAll(Collection collection) { return false; }
    @Override public boolean containsAll(Collection collection) { return false; }
    @Override public Object remove() { return null; }
    @Override public Object element() { return null; }
    @Override public Object peek() { return null; }
}
