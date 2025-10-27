package ch.ethz.systems.netbench.xpt.ports.XIFO;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;


public class KLLSketch {
    private final int capacity;
    private final int numQueues;
    private final int bufferReductionPercent;
    private List<Integer> compactor;
    private List<Integer> quantileBoundaries;

    public KLLSketch(int capacity, int numQueues) {
        this(capacity, numQueues, 1);
    }

    public KLLSketch(int capacity, int numQueues, int bufferReduction) {
        this.capacity = capacity;
        this.numQueues = numQueues;
        this.bufferReductionPercent = Math.max(0, Math.min(100, bufferReduction));
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
        if (bufferReductionPercent <= 0 || compactor.isEmpty()) {
            return;
        }

        int originalSize = compactor.size();
        int targetSize = (int) Math.round(originalSize * (1.0 - (bufferReductionPercent / 100.0)));
        int groupSize = (int) Math.ceil((double) originalSize / targetSize);
        List<Integer> newCompactor = new ArrayList<>(targetSize);
        for (int i = 0; i < originalSize; i += groupSize) {
            int endExclusive = Math.min(i + groupSize, originalSize);
            long sum = 0;
            for (int j = i; j < endExclusive; j++) {
                sum += compactor.get(j);
            }
            int itemsInGroup = endExclusive - i;
            int averagedValue = (int) Math.round((double) sum / itemsInGroup);
            newCompactor.add(averagedValue);
        }
        if (newCompactor.size() > targetSize) {
            newCompactor = new ArrayList<>(newCompactor.subList(0, targetSize));
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
