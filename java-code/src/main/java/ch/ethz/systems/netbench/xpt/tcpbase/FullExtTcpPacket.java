package ch.ethz.systems.netbench.xpt.tcpbase;

import java.util.Collection;

import ch.ethz.systems.netbench.ext.basic.TcpPacket;

public class FullExtTcpPacket extends TcpPacket implements SelectiveAckHeader, EchoHeader, PriorityHeader, Comparable {

    private long priority;
    private Collection<AckRange> selectiveAck;
    private long echoDepartureTime;
    private int echoFlowletId;
    private int enqueuedRound;
    private long enqueueTime;

    public FullExtTcpPacket(long flowId, long dataSizeByte, int sourceId, int destinationId, int TTL, int sourcePort, int destinationPort, long sequenceNumber, long acknowledgementNumber, boolean NS, boolean CWR, boolean ECE, boolean URG, boolean ACK, boolean PSH, boolean RST, boolean SYN, boolean FIN, double windowSize, long priority) {
        super(flowId, dataSizeByte, sourceId, destinationId, TTL, sourcePort, destinationPort, sequenceNumber, acknowledgementNumber, NS, CWR, ECE, URG, ACK, PSH, RST, SYN, FIN, windowSize);
        this.priority = priority;
    }

    @Override
    public TcpPacket setEchoDepartureTime(long echoDepartureTime) {
        this.echoDepartureTime = echoDepartureTime;
        return this;
    }

    @Override
    public long getEchoDepartureTime() {
        return echoDepartureTime;
    }

    @Override
    public TcpPacket setEchoFlowletId(int echoFlowletId) {
        this.echoFlowletId = echoFlowletId;
        return this;
    }

    @Override
    public int getEchoFlowletId() {
        return echoFlowletId;
    }

    @Override
    public TcpPacket setSelectiveAck(Collection<AckRange> selectiveAck) {
        this.selectiveAck = selectiveAck;
        return this;
    }

    @Override
    public Collection<AckRange> getSelectiveAck() {
        return this.selectiveAck;
    }

    @Override
    public long getPriority() {
        return priority;
    }

    @Override
    public void increasePriority() {
        priority++;
    }

    @Override
    public void setPriority(long val) {
        priority = val;
    }

    @Override
    public int compareTo(Object o) {
        // "this" is the packet being inserted
        // "other" is the packet we're comparing to (in the queue)
        FullExtTcpPacket other = (FullExtTcpPacket) o;

        // Priority = rank
        int i = Long.compare((int)this.getPriority(), (int)other.getPriority());
        // If the ranks are not equal, return comparator int
        if (i != 0) return i;

        i = Long.compare((int)this.getEnqueueTime(), (int)other.getEnqueueTime());
        //System.out.println("Comparison: " + i + " other " + (int)other.getEnqueueTime() + " this " + (int)this.getEnqueueTime());
        return i;
    }

    public int getEnqueuedRound(){
        return enqueuedRound;
    }

    public long getEnqueueTime() { return enqueueTime; }

    public void setEnqueueTime(long enqueueTime) {this.enqueueTime = enqueueTime;}

    public void setEnqueuedRound(int enqueuedRound) {
        this.enqueuedRound = enqueuedRound;
    }
}
