package ch.ethz.systems.netbench.xpt.ports.XIFO_WFQ;

import ch.ethz.systems.netbench.core.Simulator;
import ch.ethz.systems.netbench.core.log.SimulationLogger;
import ch.ethz.systems.netbench.core.network.Link;
import ch.ethz.systems.netbench.core.network.NetworkDevice;
import ch.ethz.systems.netbench.core.network.OutputPort;
import ch.ethz.systems.netbench.core.network.Packet;
import ch.ethz.systems.netbench.core.network.PacketDispatchedEvent;
import ch.ethz.systems.netbench.ext.basic.IpHeader;

public class WFQXIFOOutputPort extends OutputPort {

    public WFQXIFOOutputPort(NetworkDevice ownNetworkDevice, NetworkDevice targetNetworkDevice, Link link,
                             long numberQueues, long sizePerQueuePackets, long bufferSize) {
        super(ownNetworkDevice, targetNetworkDevice, link,
                new WFQXIFOQueue(numberQueues, sizePerQueuePackets, ownNetworkDevice, bufferSize));
    }

    @Override
    public void enqueue(Packet packet) {
        if (!getIsSending()) {
            getLogger().logLinkUtilized(true);
            Simulator.registerEvent(new PacketDispatchedEvent(
                    (long) ((double) packet.getSizeBit() / getLink().getBandwidthBitPerNs()),
                    packet,
                    this
            ));
            setIsSending();
        } else {
            boolean enqueued = getQueue().offer(packet);
            if (enqueued) {
                increaseBufferOccupiedBits(packet.getSizeBit());
                getLogger().logQueueState(getQueue().size(), getBufferOccupiedBits());
            } else {
                SimulationLogger.increaseStatisticCounter("PACKETS_DROPPED");
                IpHeader ipHeader = (IpHeader) packet;
                if (ipHeader.getSourceId() == this.getOwnId()) {
                    SimulationLogger.increaseStatisticCounter("PACKETS_DROPPED_AT_SOURCE");
                }
            }
        }
    }
}
