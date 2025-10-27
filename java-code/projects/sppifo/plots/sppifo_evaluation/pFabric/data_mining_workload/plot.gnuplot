load 'projects/sppifo/plots/spectral.pal'
midnight = "#D53E4F"; aqua = "#F46D43"; ocean = "#FDAE61"; wave = "#66C2A5"; stone = "#ABDDA4"; foam = "#3288BD"
set terminal pdfcairo
set term pdfcairo enhanced font "Helvetica,16" size 4in,2.5in

########################################################################################################################
# Mean flow completion time: pFabric-based scheduling schemes
########################################################################################################################
set output 'projects/sppifo/plots/sppifo_evaluation/pFabric/data_mining_workload/pFabric_less_100KB_99th_fct_ms.pdf'

set xlabel 'Load'
set xrange [0:6]
set xtics ("0.2" 0, "0.3" 1, "0.4" 2, "0.5" 3, "0.6" 4, "0.7" 5, "0.5" 6)

set ylabel 'Flow Completion Time (ms)'
set yrange [0:50]
set key opaque
plot "projects/sppifo/plots/sppifo_evaluation/pFabric/data_mining_workload/pFabric_less_100KB_99th_fct_ms.dat" using 4 title "PIFO" w lp  ls 21 lw 4, \
            '' using 5 title "SP-PIFO"  w lp ls 23 lw 4, \
            '' using 3 title "DCTCP" w lp ls 27 lw 4, \
            '' using 2 title "TCP"  w lp ls 28 lw 4, \
            '' using 6 title "XIFO" w lp ls 29 lw 4

########################################################################################################################
# Mean flow completion time <100KB: pFabric-based scheduling schemes
########################################################################################################################
set output 'projects/sppifo/plots/sppifo_evaluation/pFabric/data_mining_workload/pFabric_less_100KB_mean_fct_ms.pdf'

set xlabel 'Load'
set ylabel 'Flow Completion Time (ms)'
set yrange [0:10]
set ytics 2
set key opaque
plot "projects/sppifo/plots/sppifo_evaluation/pFabric/data_mining_workload/pFabric_less_100KB_mean_fct_ms.dat" using 4 title "PIFO" w lp  ls 21 lw 4, \
            '' using 5 title "SP-PIFO"  w lp ls 23 lw 4, \
            '' using 3 title "DCTCP" w lp ls 27 lw 4, \
            '' using 2 title "TCP"  w lp ls 28 lw 4, \
            '' using 6 title "XIFO" w lp ls 29 lw 4

########################################################################################################################
# Mean flow completion time >10MB: pFabric-based scheduling schemes
########################################################################################################################
set output 'projects/sppifo/plots/sppifo_evaluation/pFabric/data_mining_workload/pFabric_geq_1MB_mean_fct_ms.pdf'

set xlabel 'Load'
set ylabel 'Flow Completion Time (ms)'
set yrange [0:500]
set ytics auto
set key opaque
plot "projects/sppifo/plots/sppifo_evaluation/pFabric/data_mining_workload/pFabric_geq_1MB_mean_fct_ms.dat" using 4 title "PIFO" w lp  ls 21 lw 4, \
            '' using 5 title "SP-PIFO"  w lp ls 23 lw 4, \
            '' using 3 title "DCTCP" w lp ls 27 lw 4, \
            '' using 2 title "TCP"  w lp ls 28 lw 4, \
            '' using 6 title "XIFO" w lp ls 29 lw 4

########################################################################################################################
# Mean Throughput: pFabric
########################################################################################################################
set output 'projects/sppifo/plots/sppifo_evaluation/pFabric/data_mining_workload/pFabric_mean_throughput.pdf'

set xlabel 'Load'
set ylabel 'Throughput(Gbps)'
set yrange [0:0.3]
set ytics auto
set key opaque
plot "projects/sppifo/plots/sppifo_evaluation/pFabric/data_mining_workload/pFabric_mean_throughput.dat" using 4 title "PIFO" w lp  ls 21 lw 4, \
            '' using 5 title "SP-PIFO"  w lp ls 23 lw 4, \
            '' using 3 title "DCTCP" w lp ls 27 lw 4, \
            '' using 2 title "TCP"  w lp ls 28 lw 4, \
            '' using 6 title "XIFO" w lp ls 29 lw 4


########################################################################################################################
# Packet Dropped: pFabric
########################################################################################################################
set output 'projects/sppifo/plots/sppifo_evaluation/pFabric/data_mining_workload/pFabric_packet_drop.pdf'

set xlabel 'Load'
set ylabel 'Number of Packet drops(·10^5)'
set yrange [0:6]
set ytics auto
set key opaque
plot "projects/sppifo/plots/sppifo_evaluation/pFabric/data_mining_workload/pFabric_packet_drop.dat" using 3 title "PIFO" w lp  ls 21 lw 4, \
            '' using 4 title "SP-PIFO"  w lp ls 23 lw 4, \
            '' using 2 title "TCP"  w lp ls 28 lw 4, \
            '' using 5 title "XIFO" w lp ls 29 lw 4

########################################################################################################################
# Buffer Reduction Effect: pFabric
########################################################################################################################
set output 'projects/sppifo/plots/sppifo_evaluation/pFabric/data_mining_workload/pFabric_buffer_reduction_effect.pdf'

set xlabel 'Load'
set ylabel 'Flow Completion Time (ms)'
set yrange [1:3]
set ytics auto
set key opaque
plot "projects/sppifo/plots/sppifo_evaluation/pFabric/data_mining_workload/buffer_reduction_effect.dat" using 3 title "25%" w lp ls 21 lw 4, \
            '' using 4 title "50%" w lp ls 23 lw 4, \
            '' using 2 title "75%" w lp ls 28 lw 4, \
            '' using 5 title "66%" w lp ls 29 lw 4


########################################################################################################################
# Sliding Window Effect: pFabric
########################################################################################################################
set output 'projects/sppifo/plots/sppifo_evaluation/pFabric/data_mining_workload/sliding_window_effect.pdf'

set xlabel 'Load'
set ylabel 'Flow Completion Time (ms)'
set yrange [1:3]
set ytics auto
set key opaque left
plot "projects/sppifo/plots/sppifo_evaluation/pFabric/data_mining_workload/sliding_window_effect.dat" using 2 title "W=16" w lp pt 7 ps 0.4 lc rgb "#D53E4F" lw 4, \
            '' using 3 title "W=32" w lp pt 7 ps 0.4 lc rgb "#F46D43" lw 4, \
            '' using 4 title "W=64" w lp pt 7 ps 0.4 lc rgb "#FDAE61" lw 4, \
            '' using 5 title "W=128" w lp pt 7 ps 0.4 lc rgb "#66C2A5" lw 4, \
            '' using 6 title "W=256" w lp pt 7 ps 0.4 lc rgb "#3288BD" lw 4