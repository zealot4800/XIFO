package ch.ethz.systems.netbench.ext.poissontraffic;

import java.util.Map;

import ch.ethz.systems.netbench.core.log.SimulationLogger;
import ch.ethz.systems.netbench.core.network.TransportLayer;
import ch.ethz.systems.netbench.core.run.traffic.TrafficPlanner;

public class FromStringArrivalPlanner extends TrafficPlanner {

    private final String arrivals;

    /**
     * Constructor.
     *
     * @param idToTransportLayerMap     Maps a network device identifier to its corresponding transport layer
     * @param arrivals                  File name of arrival plan
     */
    public FromStringArrivalPlanner(Map<Integer, TransportLayer> idToTransportLayerMap, String arrivals) {
        super(idToTransportLayerMap);
        this.arrivals = arrivals;
        SimulationLogger.logInfo("Flow planner", "FROM_STRING_ARRIVAL_PLANNER(arrivals=" + arrivals + ")");
    }

    /**
     * Creates plan based on the given string:
     *
     * @param durationNs    Duration in nanoseconds
     */
    @Override
    public void createPlan(long durationNs) {

        String[] spl = arrivals.split(";");
        for (String s : spl) {
            s = s.substring(1, s.length() - 1);

            String[] arrivalSpl = s.split(",");
            this.registerFlow(
                Long.valueOf(arrivalSpl[0].trim()),
                Integer.valueOf(arrivalSpl[1].trim()),
                Integer.valueOf(arrivalSpl[2].trim()),
                Long.valueOf(arrivalSpl[3].trim())
            );

        }

    }

}
