package ch.ethz.systems.netbench.xpt.ports.XIFO_WFQ;

import ch.ethz.systems.netbench.core.log.SimulationLogger;
import ch.ethz.systems.netbench.core.network.Link;
import ch.ethz.systems.netbench.core.network.NetworkDevice;
import ch.ethz.systems.netbench.core.network.OutputPort;
import ch.ethz.systems.netbench.core.run.infrastructure.OutputPortGenerator;

public class WFQXIFOOutputPortGenerator extends OutputPortGenerator {

    private final long numberQueues;
    private final long sizePerQueuePackets;
    private final long bufferSize;

    public WFQXIFOOutputPortGenerator(long numberQueues, long sizePerQueuePackets, long bufferSize) {
        this.numberQueues = numberQueues;
        this.sizePerQueuePackets = sizePerQueuePackets;
        this.bufferSize = bufferSize;
        SimulationLogger.logInfo("Port",
                "WFQXIFO(numberQueues=" + numberQueues + ", sizePerQueuePackets=" + sizePerQueuePackets +
                        ", window=" + bufferSize + ")");
    }

    @Override
    public OutputPort generate(NetworkDevice ownNetworkDevice, NetworkDevice towardsNetworkDevice, Link link) {
        return new WFQXIFOOutputPort(ownNetworkDevice, towardsNetworkDevice, link,
                numberQueues, sizePerQueuePackets, bufferSize);
    }
}
