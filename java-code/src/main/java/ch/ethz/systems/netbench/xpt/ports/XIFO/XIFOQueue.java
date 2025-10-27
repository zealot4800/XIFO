package ch.ethz.systems.netbench.xpt.ports.XIFO;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Queue;
import java.util.concurrent.ArrayBlockingQueue;

import ch.ethz.systems.netbench.core.log.SimulationLogger;
import ch.ethz.systems.netbench.core.network.NetworkDevice;
import ch.ethz.systems.netbench.core.network.Packet;
import ch.ethz.systems.netbench.xpt.tcpbase.FullExtTcpPacket;
import ch.ethz.systems.netbench.xpt.tcpbase.PriorityHeader;

public class XIFOQueue implements Queue {

    private final ArrayList<ArrayBlockingQueue<Packet>> queueList;
    private final Map<Integer, Integer> queueBounds;
    private final KLLSketch scheduler;
    private final int ownId;
    private final long bufferSize;
    
    public XIFOQueue(long numQueues, long perQueueCapacity, NetworkDevice ownNetworkDevice, long window, long bufferReduction) {
        this.queueList = new ArrayList<>((int) numQueues);
        this.queueBounds = new HashMap<>();
        this.ownId = ownNetworkDevice.getIdentifier();
        this.bufferSize = 32;
        this.scheduler = new KLLSketch((int) bufferSize, (int) numQueues, 75);

        for (int i = 0; i < (int) numQueues; i++) {
            queueList.add(new ArrayBlockingQueue<>((int) perQueueCapacity));
            queueBounds.put(i, 0);
        }
    }

    @Override
    public boolean offer(Object o) {

        Packet packet = (Packet) o;
        PriorityHeader header = (PriorityHeader) packet;
        int rank = (int) header.getPriority();
        scheduler.insert(rank);
        int queueIdx = scheduler.getQueueIndex(rank);
        boolean result = queueList.get(queueIdx).offer(packet);
        return result;
    }

    @Override
    public Object poll() {
        for (int q = 0; q < queueList.size(); q++) {
            Packet p = queueList.get(q).poll();
            if (p != null) {
                PriorityHeader header = (PriorityHeader) p;
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

                return p;
            }
        }
        return null;
    }

    @Override public int size() {
        return queueList.stream().mapToInt(ArrayBlockingQueue::size).sum();
    }

    @Override public boolean isEmpty() {
        return queueList.stream().allMatch(ArrayBlockingQueue::isEmpty);
    }

    @Override public boolean contains(Object o) { return false; }
    @Override public Iterator iterator() { return null; }
    @Override public Object[] toArray() { return new Object[0]; }
    @Override public Object[] toArray(Object[] objects) { return new Object[0]; }
    @Override public boolean add(Object o) { return false; }
    @Override public boolean remove(Object o) { return false; }
    @Override public boolean addAll(Collection collection) { return false; }
    @Override public void clear() {}
    @Override public boolean retainAll(Collection collection) { return false; }
    @Override public boolean removeAll(Collection collection) { return false; }
    @Override public boolean containsAll(Collection collection) { return false; }
    @Override public Object remove() { return null; }
    @Override public Object element() { return null; }
    @Override public Object peek() { return null; }
}
