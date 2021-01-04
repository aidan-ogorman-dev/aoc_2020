/ read input
i:"I"$read0`:day9.txt

/ part 1
f:{n:last 26#x; pre:26#x; $[n in raze pre +/: pre; :1 _ x; '"No match on: ",.Q.s1[n]]}
f\[{0<count x};i]

/ part 2
m:1721308972
sum (min;max)@\:i {x[1] - til 1 + x 0} c vs last where raze m = sums til[c:count i]xprev\:i
