package ch.ethz.systems.netbench.xpt.ports.XIFO;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class KLLSketch {

    private final int capacity;
    private List<Integer> compactor;
    private Integer p10;
    private Integer p25;
    private Integer p40;
    private Integer p55;
    private Integer p70;
    private Integer p85;
    private Integer p95;

    public KLLSketch(int capacity) {
        this.capacity = capacity;
        this.compactor = new ArrayList<>();
        this.p10 = null;
        this.p25 = null;
        this.p40 = null;
        this.p55 = null;
        this.p70 = null;
        this.p85 = null;
        this.p95 = null;
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
        Collections.sort(compactor);
    }

    private Integer query(double quantile) {
        int index = (int) (quantile * compactor.size());
        index = Math.min(index, compactor.size() - 1);
        return compactor.get(index);
    }

    private void cacheQuantiles() {
        Collections.sort(compactor);
        p10 = query(0.12);
        p25 = query(0.25);
        p40 = query(0.37);
        p55 = query(0.50);
        p70 = query(0.63);
        p85 = query(0.76);
        p95 = query(0.88);
        compact();
    }

    public int getQueueIndex(int value) {
        if (p10 == null) {
            return 7;
        }
        if (value <= p10) {
            return 0;
        }
        if (value <= p25) {
            return 1;
        }
        if (value <= p40) {
            return 2;
        }
        if (value <= p55) {
            return 3;
        }
        if (value <= p70) {
            return 4;
        }
        if (value <= p85) {
            return 5;
        }
        if (value <= p95) {
            return 6;
        }
        return 7;
    }
}
