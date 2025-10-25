package ch.ethz.systems.netbench.xpt.ports.XIFO;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;


public class KLLSketch {
    private final int capacity;
    private final int numQueues;
    private final int bufferReduction;
    private List<Integer> compactor;
    private List<Integer> quantileBoundaries;

    public KLLSketch(int capacity, int numQueues) {
        this(capacity, numQueues, 1);
    }

    public KLLSketch(int capacity, int numQueues, int bufferReduction) {
        this.capacity = capacity;
        this.numQueues = numQueues;
        this.bufferReduction = Math.max(1, bufferReduction);
        this.compactor = new ArrayList<>();
        this.quantileBoundaries = null;
    }

    public void insert(int value) {
        compactor.add(value);
        if (compactor.size() > capacity) {
            cacheQuantiles();
        }
    }

    private void compact() {
        if (bufferReduction <= 1 || compactor.isEmpty()) {
            return;
        }

        List<Integer> newCompactor = new ArrayList<>();
        for (int i = 0; i < compactor.size(); i += bufferReduction) {
            int endExclusive = Math.min(i + bufferReduction, compactor.size());
            long sum = 0;
            for (int j = i; j < endExclusive; j++) {
                sum += compactor.get(j);
            }
            int groupSize = endExclusive - i;
            int averagedValue = (int) Math.round((double) sum / groupSize);
            newCompactor.add(averagedValue);
        }
        compactor = newCompactor;
    }

    private Integer query(double quantile) {
        int index = (int) (quantile * compactor.size()) + 1;
        index = Math.min(index, compactor.size() - 1);
        return compactor.get(index);
    }

    private void cacheQuantiles() {
        Collections.sort(compactor);
        quantileBoundaries = new ArrayList<>();
        for (int i = 0; i < numQueues; i++) {
            double quantile = (double) i / numQueues;
            quantileBoundaries.add(query(quantile));
        }
        compact();
    }

    public int getQueueIndex(int value) {
        if (quantileBoundaries == null || quantileBoundaries.isEmpty()) {
            return numQueues - 1;
        }
        for (int i = quantileBoundaries.size() - 1; i >= 0; i--) {
            if (value >= quantileBoundaries.get(i)) {
                return i;
            }
        }
        return 0;
    }
}
