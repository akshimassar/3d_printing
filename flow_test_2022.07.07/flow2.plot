
set datafile separator "\t"
set grid
#set key bottom center
#set key outside
set key below
set xrange [0:30]
set yrange [-15:-7]
set ytics 1
set xlabel "mm^3/s"
set ylabel "%"
do for [i=1:20] {
	set style line i linewidth 2 pt 7
}
set terminal pngcairo enhanced background "#6f6f6f" size 960,720
set termoption dashed
plot 'data' using 1:2:(0.01):xticlabels(1) smooth acspline with lines title columnheader(2) ls 1 dt 1 lc rgb "blue",\
	'' using 1:2 with points notitle ls 5 lc rgb "blue",\
	'' using 1:3:(0.01) smooth acspline w l t columnheader(3) ls 3 dt 1 lc rgb "green",\
	'' using 1:3 with points notitle ls 5 lc rgb "green",\
	'' using 1:4:(0.01) smooth acspline w l t columnheader(4) ls 5 dt 1 lc rgb "yellow",\
	'' using 1:4 with points notitle ls 5 lc rgb "yellow",\
	'' using 1:5:(0.01) smooth acspline w l t columnheader(5) ls 6 dt 1 lc rgb "red",\
	'' using 1:5 with points notitle ls 5 lc rgb "red",\

	#'' using 1:3 smooth bezier w l t columnheader(2) ls 2 lc rgb "blue",\
	#'' using 1:5 smooth bezier w l t columnheader(5) ls 4 lc rgb "red" ,\
	#'' using 1:2 with points notitle ls 1 lc rgb "blue", \
	#'' using 1:3 with points notitle ls 2 lc rgb "green", \
	#'' using 1:4 with points notitle ls 3 lc rgb "yellow", \
	#'' using 1:5 with points notitle ls 4 lc rgb "red", \
	#'' using 1:6 with points notitle ls 5 lc rgb "green", \
	#'' using 1:7 with points notitle ls 6 lc rgb "yellow", \
	#'' using 1:8 with points notitle ls 7 lc rgb "green", \
	#'' using 1:9 with points notitle ls 7 lc rgb "yellow", \

