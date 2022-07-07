
set datafile separator "\t"
set grid
#set key bottom center
#set key outside
set key below
set xrange [0:30]
set yrange [-15:-4]
set ytics 1
set xlabel "mm^3/s"
set ylabel "%"
do for [i=1:20] {
	set style line i linewidth 2 pt 7
}
set terminal pngcairo enhanced background "#6f6f6f" size 960,720
set termoption dashed
plot 'data' using 1:3:(0.01):xticlabels(1) smooth acspline with lines title columnheader(3) ls 1 dt 1 lc rgb "blue",\
	'' using 1:4:(0.01) smooth acspline w l t columnheader(4) ls 3 dt 2 lc rgb "blue",\
	'' using 1:6:(0.01) smooth acspline w l t columnheader(6) ls 5 dt 1 lc rgb "yellow",\
	'' using 1:7:(0.01) smooth acspline w l t columnheader(7) ls 6 dt 2 lc rgb "yellow",\
	'' using 1:8:(0.01) smooth acspline w l t columnheader(8) ls 7 dt 1 lc rgb "green",\
	'' using 1:9:(0.01) smooth acspline w l t columnheader(9) ls 7 dt 2 lc rgb "green",\
	'' using 1:10:(0.01) smooth acspline w l t columnheader(10) ls 7 dt 1 lc rgb "web-blue",\
	'' using 1:11:(0.01) smooth acspline w l t columnheader(11) ls 7 dt 2 lc rgb "web-blue",\
	'' using 1:12:(0.01) smooth acspline w l t columnheader(12) ls 7 dt 1 lc rgb "dark-blue",\
	'' using 1:13:(0.01) smooth acspline w l t columnheader(13) ls 7 dt 2 lc rgb "dark-blue",\
	'' using 1:14:(0.01) smooth acspline w l t columnheader(14) ls 7 dt 1 lc rgb "dark-green",\
	'' using 1:15:(0.01) smooth acspline w l t columnheader(15) ls 7 dt 2 lc rgb "dark-green",\

	#'' using 1:3:(0.01) smooth acspline w l t columnheader(2) ls 2 lc rgb "blue",\
	#'' using 1:5:(0.01) smooth acspline w l t columnheader(5) ls 4 lc rgb "red" ,\
	#'' using 1:2 with points notitle ls 1 lc rgb "blue", \
	#'' using 1:3 with points notitle ls 2 lc rgb "green", \
	#'' using 1:4 with points notitle ls 3 lc rgb "yellow", \
	#'' using 1:5 with points notitle ls 4 lc rgb "red", \
	#'' using 1:6 with points notitle ls 5 lc rgb "green", \
	#'' using 1:7 with points notitle ls 6 lc rgb "yellow", \
	#'' using 1:8 with points notitle ls 7 lc rgb "green", \
	#'' using 1:9 with points notitle ls 7 lc rgb "yellow", \

