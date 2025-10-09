#!/bin/bash

echo -e "Running SP-PIFO evaluation using run.sh"

# Compile
mvn clean compile assembly:single

#/* Figure 5: SP-PIFO performance (uniform rank distribution) */

#/* Figure 5a: Uniform 8 queues */
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_analysis/uniform_rank_distribution/uniform_8_queues/FIFO.properties 
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_analysis/uniform_rank_distribution/uniform_8_queues/SPPIFO.properties 
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_analysis/uniform_rank_distribution/uniform_8_queues/Fixed_queue_bounds.properties 
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_analysis/uniform_rank_distribution/uniform_8_queues/Greedy.properties 
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_analysis/uniform_rank_distribution/uniform_8_queues/XIFO.properties

# #/* Figure 5b: Uniform 32 queues */
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_analysis/uniform_rank_distribution/uniform_32_queues/FIFO_32.properties 
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_analysis/uniform_rank_distribution/uniform_32_queues/SPPIFO_32.properties 
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_analysis/uniform_rank_distribution/uniform_32_queues/Fixed_queue_bounds_32.properties 
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_analysis/uniform_rank_distribution/uniform_32_queues/Greedy_32.properties
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_analysis/uniform_rank_distribution/uniform_32_queues/XIFO_32.properties 

# #/* Figure 5d: Utilization */
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_analysis/uniform_rank_distribution/utilization/SPPIFO_20.properties 
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_analysis/uniform_rank_distribution/utilization/SPPIFO_40.properties 
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_analysis/uniform_rank_distribution/utilization/SPPIFO_60.properties 
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_analysis/uniform_rank_distribution/utilization/SPPIFO_80.properties 
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_analysis/uniform_rank_distribution/utilization/SPPIFO_90.properties 

# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_analysis/uniform_rank_distribution/utilization/Greedy_20.properties 
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_analysis/uniform_rank_distribution/utilization/Greedy_40.properties 
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_analysis/uniform_rank_distribution/utilization/Greedy_60.properties 
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_analysis/uniform_rank_distribution/utilization/Greedy_80.properties 
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_analysis/uniform_rank_distribution/utilization/Greedy_90.properties 

# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_analysis/uniform_rank_distribution/utilization/FIFO_20.properties 
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_analysis/uniform_rank_distribution/utilization/FIFO_40.properties 
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_analysis/uniform_rank_distribution/utilization/FIFO_60.properties 
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_analysis/uniform_rank_distribution/utilization/FIFO_80.properties 
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_analysis/uniform_rank_distribution/utilization/FIFO_90.properties 

# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_analysis/uniform_rank_distribution/utilization/XIFO_20.properties
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_analysis/uniform_rank_distribution/utilization/XIFO_40.properties
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_analysis/uniform_rank_distribution/utilization/XIFO_60.properties
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_analysis/uniform_rank_distribution/utilization/XIFO_80.properties
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_analysis/uniform_rank_distribution/utilization/XIFO_90.properties

# #/* Analyze and plot */
# python3 projects/sppifo/plots/sppifo_analysis/uniform_rank_distribution/uniform_8_queues/analyze.py
# gnuplot projects/sppifo/plots/sppifo_analysis/uniform_rank_distribution/uniform_8_queues/plot.gnuplot

# python3 projects/sppifo/plots/sppifo_analysis/uniform_rank_distribution/uniform_32_queues/analyze.py
# gnuplot projects/sppifo/plots/sppifo_analysis/uniform_rank_distribution/uniform_32_queues/plot.gnuplot

# python3 projects/sppifo/plots/sppifo_analysis/uniform_rank_distribution/utilization/analyze.py
# gnuplot projects/sppifo/plots/sppifo_analysis/uniform_rank_distribution/utilization/plot.gnuplot

# /* Figure 6: SP-PIFO performance (alternative distributions) */

# /* Figure 6a: Exponential */
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_analysis/alternative_distributions/exponential/FIFO.properties 
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_analysis/alternative_distributions/exponential/SPPIFO.properties 
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_analysis/alternative_distributions/exponential/Greedy.properties 
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_analysis/alternative_distributions/exponential/XIFO.properties 

# # /* Figure 6b: Inverse exponential */
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_analysis/alternative_distributions/inverse_exponential/FIFO.properties 
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_analysis/alternative_distributions/inverse_exponential/SPPIFO.properties 
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_analysis/alternative_distributions/inverse_exponential/Greedy.properties 
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_analysis/alternative_distributions/inverse_exponential/XIFO.properties 

# # /* Figure 6c: Poisson */
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_analysis/alternative_distributions/poisson/FIFO.properties 
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_analysis/alternative_distributions/poisson/SPPIFO.properties 
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_analysis/alternative_distributions/poisson/Greedy.properties 
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_analysis/alternative_distributions/poisson/XIFO.properties 

# # /* Figure 6d: Convex */
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_analysis/alternative_distributions/convex/FIFO.properties 
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_analysis/alternative_distributions/convex/SPPIFO.properties 
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_analysis/alternative_distributions/convex/Greedy.properties 
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_analysis/alternative_distributions/convex/XIFO.properties 

# # /* Analyze and plot */
# python3 projects/sppifo/plots/sppifo_analysis/alternative_distributions/analyze.py
# gnuplot projects/sppifo/plots/sppifo_analysis/alternative_distributions/exponential/plot.gnuplot
# gnuplot projects/sppifo/plots/sppifo_analysis/alternative_distributions/inverse_exponential/plot.gnuplot
# gnuplot projects/sppifo/plots/sppifo_analysis/alternative_distributions/poisson/plot.gnuplot
# gnuplot projects/sppifo/plots/sppifo_analysis/alternative_distributions/convex/plot.gnuplot

#/* Figure 7: pFabric: FCT statistics across different flow sizes in data mining workload */

# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/pFabric/data_mining_workload/4000/DCTCP.properties 
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/pFabric/data_mining_workload/4000/TCP.properties 
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/pFabric/data_mining_workload/4000/PIFO.properties 
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/pFabric/data_mining_workload/4000/SPPIFO.properties
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/pFabric/data_mining_workload/4000/XIFO.properties 

# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/pFabric/data_mining_workload/6000/DCTCP.properties 
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/pFabric/data_mining_workload/6000/TCP.properties 
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/pFabric/data_mining_workload/6000/PIFO.properties 
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/pFabric/data_mining_workload/6000/SPPIFO.properties
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/pFabric/data_mining_workload/6000/XIFO.properties 

# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/pFabric/data_mining_workload/10000/DCTCP.properties 
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/pFabric/data_mining_workload/10000/TCP.properties 
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/pFabric/data_mining_workload/10000/PIFO.properties 
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/pFabric/data_mining_workload/10000/SPPIFO.properties
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/pFabric/data_mining_workload/10000/XIFO.properties 

# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/pFabric/data_mining_workload/15000/DCTCP.properties 
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/pFabric/data_mining_workload/15000/TCP.properties 
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/pFabric/data_mining_workload/15000/PIFO.properties 
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/pFabric/data_mining_workload/15000/SPPIFO.properties
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/pFabric/data_mining_workload/15000/XIFO.properties 

# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/pFabric/data_mining_workload/22500/DCTCP.properties 
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/pFabric/data_mining_workload/22500/TCP.properties 
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/pFabric/data_mining_workload/22500/PIFO.properties 
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/pFabric/data_mining_workload/22500/SPPIFO.properties
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/pFabric/data_mining_workload/22500/XIFO.properties 

# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/pFabric/data_mining_workload/37000/DCTCP.properties 
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/pFabric/data_mining_workload/37000/TCP.properties 
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/pFabric/data_mining_workload/37000/PIFO.properties 
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/pFabric/data_mining_workload/37000/SPPIFO.properties
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/pFabric/data_mining_workload/37000/XIFO.properties 

# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/pFabric/data_mining_workload/60000/DCTCP.properties 
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/pFabric/data_mining_workload/60000/TCP.properties 
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/pFabric/data_mining_workload/60000/PIFO.properties 
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/pFabric/data_mining_workload/60000/SPPIFO.properties
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/pFabric/data_mining_workload/60000/XIFO.properties 

#/* Analyze and plot */
# python3 projects/sppifo/plots/sppifo_evaluation/pFabric/data_mining_workload/analyze.py
# gnuplot projects/sppifo/plots/sppifo_evaluation/pFabric/data_mining_workload/plot.gnuplot

#/* Figure 8: pFabric: FCT statistics across different flow sizes in web search workload */

# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/pFabric/web_search_workload/3600/DCTCP.properties 
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/pFabric/web_search_workload/3600/TCP.properties 
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/pFabric/web_search_workload/3600/PIFO.properties 
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/pFabric/web_search_workload/3600/SPPIFO.properties 
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/pFabric/web_search_workload/3600/XIFO.properties

# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/pFabric/web_search_workload/5200/DCTCP.properties 
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/pFabric/web_search_workload/5200/TCP.properties 
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/pFabric/web_search_workload/5200/PIFO.properties 
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/pFabric/web_search_workload/5200/SPPIFO.properties 
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/pFabric/web_search_workload/5200/XIFO.properties

# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/pFabric/web_search_workload/7000/DCTCP.properties 
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/pFabric/web_search_workload/7000/TCP.properties 
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/pFabric/web_search_workload/7000/PIFO.properties 
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/pFabric/web_search_workload/7000/SPPIFO.properties 
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/pFabric/web_search_workload/7000/XIFO.properties

# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/pFabric/web_search_workload/8900/DCTCP.properties 
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/pFabric/web_search_workload/8900/TCP.properties 
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/pFabric/web_search_workload/8900/PIFO.properties 
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/pFabric/web_search_workload/8900/SPPIFO.properties 
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/pFabric/web_search_workload/8900/XIFO.properties

# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/pFabric/web_search_workload/11100/DCTCP.properties 
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/pFabric/web_search_workload/11100/TCP.properties 
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/pFabric/web_search_workload/11100/PIFO.properties 
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/pFabric/web_search_workload/11100/SPPIFO.properties 
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/pFabric/web_search_workload/11100/XIFO.properties

# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/pFabric/web_search_workload/14150/DCTCP.properties 
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/pFabric/web_search_workload/14150/TCP.properties 
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/pFabric/web_search_workload/14150/PIFO.properties 
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/pFabric/web_search_workload/14150/SPPIFO.properties 
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/pFabric/web_search_workload/14150/XIFO.properties

# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/pFabric/web_search_workload/19000/DCTCP.properties 
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/pFabric/web_search_workload/19000/TCP.properties 
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/pFabric/web_search_workload/19000/PIFO.properties 
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/pFabric/web_search_workload/19000/SPPIFO.properties 
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/pFabric/web_search_workload/19000/XIFO.properties

#/* Analyze and plot */
# python3 projects/sppifo/plots/sppifo_evaluation/pFabric/web_search_workload/analyze.py
# gnuplot projects/sppifo/plots/sppifo_evaluation/pFabric/web_search_workload/plot.gnuplot

# #/* Figure 9 and 10: Fairness FCT statistics */

# /* Figure 9: Fairness: FCT statistics for all flows at different loads, over the web search workload */
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/fairness/web_search_workload/3600/TCP.properties
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/fairness/web_search_workload/3600/DCTCP.properties
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/fairness/web_search_workload/3600/AFQ_8.properties
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/fairness/web_search_workload/3600/AFQ_32.properties
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/fairness/web_search_workload/3600/PIFOWFQ_8.properties 
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/fairness/web_search_workload/3600/PIFOWFQ_32.properties 
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/fairness/web_search_workload/3600/SPPIFOWFQ_8.properties 
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/fairness/web_search_workload/3600/SPPIFOWFQ_32.properties 
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/fairness/web_search_workload/3600/XIFOWFQ_8.properties
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/fairness/web_search_workload/3600/XIFOWFQ_32.properties

# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/fairness/web_search_workload/5200/TCP.properties
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/fairness/web_search_workload/5200/DCTCP.properties
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/fairness/web_search_workload/5200/AFQ_8.properties
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/fairness/web_search_workload/5200/AFQ_32.properties
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/fairness/web_search_workload/5200/PIFOWFQ_8.properties 
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/fairness/web_search_workload/5200/PIFOWFQ_32.properties 
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/fairness/web_search_workload/5200/SPPIFOWFQ_8.properties 
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/fairness/web_search_workload/5200/SPPIFOWFQ_32.properties 
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/fairness/web_search_workload/5200/XIFOWFQ_8.properties
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/fairness/web_search_workload/5200/XIFOWFQ_32.properties

# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/fairness/web_search_workload/7000/TCP.properties
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/fairness/web_search_workload/7000/DCTCP.properties
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/fairness/web_search_workload/7000/AFQ_8.properties
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/fairness/web_search_workload/7000/AFQ_32.properties
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/fairness/web_search_workload/7000/PIFOWFQ_8.properties 
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/fairness/web_search_workload/7000/PIFOWFQ_32.properties 
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/fairness/web_search_workload/7000/SPPIFOWFQ_8.properties 
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/fairness/web_search_workload/7000/SPPIFOWFQ_32.properties 
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/fairness/web_search_workload/7000/XIFOWFQ_8.properties
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/fairness/web_search_workload/7000/XIFOWFQ_32.properties

# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/fairness/web_search_workload/8900/TCP.properties
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/fairness/web_search_workload/8900/DCTCP.properties
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/fairness/web_search_workload/8900/AFQ_8.properties
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/fairness/web_search_workload/8900/AFQ_32.properties
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/fairness/web_search_workload/8900/PIFOWFQ_8.properties 
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/fairness/web_search_workload/8900/PIFOWFQ_32.properties 
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/fairness/web_search_workload/8900/SPPIFOWFQ_8.properties 
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/fairness/web_search_workload/8900/SPPIFOWFQ_32.properties 
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/fairness/web_search_workload/8900/XIFOWFQ_8.properties
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/fairness/web_search_workload/8900/XIFOWFQ_32.properties

# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/fairness/web_search_workload/11100/TCP.properties
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/fairness/web_search_workload/11100/DCTCP.properties   
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/fairness/web_search_workload/11100/AFQ_8.properties
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/fairness/web_search_workload/11100/AFQ_32.properties
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/fairness/web_search_workload/11100/PIFOWFQ_8.properties 
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/fairness/web_search_workload/11100/PIFOWFQ_32.properties 
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/fairness/web_search_workload/11100/SPPIFOWFQ_8.properties 
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/fairness/web_search_workload/11100/SPPIFOWFQ_32.properties 
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/fairness/web_search_workload/11100/XIFOWFQ_8.properties
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/fairness/web_search_workload/11100/XIFOWFQ_32.properties

# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/fairness/web_search_workload/14150/TCP.properties
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/fairness/web_search_workload/14150/DCTCP.properties   
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/fairness/web_search_workload/14150/AFQ_8.properties
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/fairness/web_search_workload/14150/AFQ_32.properties
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/fairness/web_search_workload/14150/PIFOWFQ_8.properties 
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/fairness/web_search_workload/14150/PIFOWFQ_32.properties 
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/fairness/web_search_workload/14150/SPPIFOWFQ_8.properties 
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/fairness/web_search_workload/14150/SPPIFOWFQ_32.properties 
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/fairness/web_search_workload/14150/XIFOWFQ_8.properties
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/fairness/web_search_workload/14150/XIFOWFQ_32.properties

# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/fairness/web_search_workload/19000/TCP.properties
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/fairness/web_search_workload/19000/DCTCP.properties   
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/fairness/web_search_workload/19000/AFQ_8.properties
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/fairness/web_search_workload/19000/AFQ_32.properties
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/fairness/web_search_workload/19000/PIFOWFQ_8.properties 
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/fairness/web_search_workload/19000/PIFOWFQ_32.properties 
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/fairness/web_search_workload/19000/SPPIFOWFQ_8.properties 
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/fairness/web_search_workload/19000/SPPIFOWFQ_32.properties 
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/fairness/web_search_workload/19000/XIFOWFQ_8.properties
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/fairness/web_search_workload/19000/XIFOWFQ_32.properties

# /* Figure 10: Fairness: FCT statistics for all flows at different loads, when the number of queues is modified */
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/fairness/web_search_workload/queue_analysis/3600/AFQ_8.properties
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/fairness/web_search_workload/queue_analysis/3600/AFQ_16.properties
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/fairness/web_search_workload/queue_analysis/3600/AFQ_24.properties
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/fairness/web_search_workload/queue_analysis/3600/AFQ_32.properties
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/fairness/web_search_workload/queue_analysis/3600/PIFOWFQ_32.properties 
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/fairness/web_search_workload/queue_analysis/3600/SPPIFOWFQ_8.properties 
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/fairness/web_search_workload/queue_analysis/3600/SPPIFOWFQ_16.properties 
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/fairness/web_search_workload/queue_analysis/3600/SPPIFOWFQ_24.properties 
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/fairness/web_search_workload/queue_analysis/3600/SPPIFOWFQ_32.properties 
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/fairness/web_search_workload/queue_analysis/3600/XIFOWFQ_8.properties
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/fairness/web_search_workload/queue_analysis/3600/XIFOWFQ_16.properties
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/fairness/web_search_workload/queue_analysis/3600/XIFOWFQ_24.properties
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/fairness/web_search_workload/queue_analysis/3600/XIFOWFQ_32.properties

# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/fairness/web_search_workload/queue_analysis/7000/AFQ_8.properties
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/fairness/web_search_workload/queue_analysis/7000/AFQ_16.properties
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/fairness/web_search_workload/queue_analysis/7000/AFQ_24.properties
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/fairness/web_search_workload/queue_analysis/7000/AFQ_32.properties
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/fairness/web_search_workload/queue_analysis/7000/PIFOWFQ_32.properties 
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/fairness/web_search_workload/queue_analysis/7000/SPPIFOWFQ_8.properties 
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/fairness/web_search_workload/queue_analysis/7000/SPPIFOWFQ_16.properties 
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/fairness/web_search_workload/queue_analysis/7000/SPPIFOWFQ_24.properties 
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/fairness/web_search_workload/queue_analysis/7000/SPPIFOWFQ_32.properties 
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/fairness/web_search_workload/queue_analysis/7000/XIFOWFQ_8.properties
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/fairness/web_search_workload/queue_analysis/7000/XIFOWFQ_16.properties
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/fairness/web_search_workload/queue_analysis/7000/XIFOWFQ_24.properties
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/fairness/web_search_workload/queue_analysis/7000/XIFOWFQ_32.properties

# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/fairness/web_search_workload/queue_analysis/11100/AFQ_8.properties
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/fairness/web_search_workload/queue_analysis/11100/AFQ_16.properties
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/fairness/web_search_workload/queue_analysis/11100/AFQ_24.properties
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/fairness/web_search_workload/queue_analysis/11100/AFQ_32.properties
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/fairness/web_search_workload/queue_analysis/11100/PIFOWFQ_32.properties 
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/fairness/web_search_workload/queue_analysis/11100/SPPIFOWFQ_8.properties 
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/fairness/web_search_workload/queue_analysis/11100/SPPIFOWFQ_16.properties 
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/fairness/web_search_workload/queue_analysis/11100/SPPIFOWFQ_24.properties 
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/fairness/web_search_workload/queue_analysis/11100/SPPIFOWFQ_32.properties 
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/fairness/web_search_workload/queue_analysis/11100/XIFOWFQ_8.properties
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/fairness/web_search_workload/queue_analysis/11100/XIFOWFQ_16.properties
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/fairness/web_search_workload/queue_analysis/11100/XIFOWFQ_24.properties
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/fairness/web_search_workload/queue_analysis/11100/XIFOWFQ_32.properties

# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/fairness/web_search_workload/queue_analysis/19000/AFQ_8.properties
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/fairness/web_search_workload/queue_analysis/19000/AFQ_16.properties
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/fairness/web_search_workload/queue_analysis/19000/AFQ_24.properties
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/fairness/web_search_workload/queue_analysis/19000/AFQ_32.properties
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/fairness/web_search_workload/queue_analysis/19000/PIFOWFQ_32.properties 
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/fairness/web_search_workload/queue_analysis/19000/SPPIFOWFQ_8.properties 
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/fairness/web_search_workload/queue_analysis/19000/SPPIFOWFQ_16.properties 
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/fairness/web_search_workload/queue_analysis/19000/SPPIFOWFQ_24.properties 
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/fairness/web_search_workload/queue_analysis/19000/SPPIFOWFQ_32.properties 
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/fairness/web_search_workload/queue_analysis/19000/XIFOWFQ_8.properties
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/fairness/web_search_workload/queue_analysis/19000/XIFOWFQ_16.properties
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/fairness/web_search_workload/queue_analysis/19000/XIFOWFQ_24.properties
# java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/fairness/web_search_workload/queue_analysis/19000/XIFOWFQ_32.properties

#/* Analyze and plot */
# python projects/sppifo/plots/sppifo_evaluation/fairness/analyze.py
# gnuplot projects/sppifo/plots/sppifo_evaluation/fairness/plot.gnuplot


java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/pFabric/data_mining_workload/4000/buffer_effect/XIFOWFQ_25.properties 
java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/pFabric/data_mining_workload/4000/buffer_effect/XIFOWFQ_50.properties 
java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/pFabric/data_mining_workload/4000/buffer_effect/XIFOWFQ_75.properties 

java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/pFabric/data_mining_workload/6000/buffer_effect/XIFOWFQ_25.properties 
java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/pFabric/data_mining_workload/6000/buffer_effect/XIFOWFQ_50.properties 
java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/pFabric/data_mining_workload/6000/buffer_effect/XIFOWFQ_75.properties 

java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/pFabric/data_mining_workload/10000/buffer_effect/XIFOWFQ_25.properties 
java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/pFabric/data_mining_workload/10000/buffer_effect/XIFOWFQ_50.properties 
java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/pFabric/data_mining_workload/10000/buffer_effect/XIFOWFQ_75.properties 

java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/pFabric/data_mining_workload/15000/buffer_effect/XIFOWFQ_25.properties 
java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/pFabric/data_mining_workload/15000/buffer_effect/XIFOWFQ_50.properties 
java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/pFabric/data_mining_workload/15000/buffer_effect/XIFOWFQ_75.properties 

java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/pFabric/data_mining_workload/22500/buffer_effect/XIFOWFQ_25.properties 
java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/pFabric/data_mining_workload/22500/buffer_effect/XIFOWFQ_50.properties 
java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/pFabric/data_mining_workload/22500/buffer_effect/XIFOWFQ_75.properties 

java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/pFabric/data_mining_workload/37000/buffer_effect/XIFOWFQ_25.properties 
java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/pFabric/data_mining_workload/37000/buffer_effect/XIFOWFQ_50.properties 
java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/pFabric/data_mining_workload/37000/buffer_effect/XIFOWFQ_75.properties 

java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/pFabric/data_mining_workload/60000/buffer_effect/XIFOWFQ_25.properties  
java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/pFabric/data_mining_workload/60000/buffer_effect/XIFOWFQ_50.properties 
java -jar -ea NetBench.jar projects/sppifo/runs/sppifo_evaluation/pFabric/data_mining_workload/60000/buffer_effect/XIFOWFQ_75.properties 

python projects/sppifo/plots/sppifo_evaluation/pFabric/data_mining_workload/analyze.py
gnuplot projects/sppifo/plots/sppifo_evaluation/pFabric/data_mining_workload/plot.gnuplot