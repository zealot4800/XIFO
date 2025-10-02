package ch.ethz.systems.netbench.xpt.ports.XIFO;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;


public class KLLSketch {
    private final int capacity;
    private final int numQueues;
    private List<Integer> compactor;
    private List<Integer> quantileBoundaries;

    public KLLSketch(int capacity, int numQueues) {
        this.capacity = capacity;
        this.numQueues = numQueues;
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
        List<Integer> newCompactor = new ArrayList<>();
        for (int i = 0; i < compactor.size() - 1; i += 2) {
            newCompactor.add(Math.min(compactor.get(i), compactor.get(i + 1)));
        }
        compactor = newCompactor;
    }

    private Integer query(double quantile) {
        int index = (int) (quantile * compactor.size());
        index = Math.min(index, compactor.size() - 1);
        return compactor.get(index);
    }

    private void cacheQuantiles() {
        Collections.sort(compactor);
        quantileBoundaries = new ArrayList<>();
        for (int i = 1; i < numQueues; i++) {
            double quantile = (double) i / numQueues;
            quantileBoundaries.add(query(quantile));
        }
        compact();
    }

    public int getQueueIndex(int value) {
        if (quantileBoundaries == null || quantileBoundaries.isEmpty()) {
            return numQueues - 1;
        }
        for (int i = 0; i < quantileBoundaries.size(); i++) {
            if (value <= quantileBoundaries.get(i)) {
                return i;
            }
        }
        return numQueues - 1;
    }
}
