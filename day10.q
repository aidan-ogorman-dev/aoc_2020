/ read input
m:asc "J"$read0`:day10.txt

/ part 1
res:(*/)count each group 1 _ deltas 0,m,3+last m
-1 "The answer for part 1 is: ",.Q.s1[res];

/ part 2
i:deltas[m],3 			/ calculate deltas between each item
di:deltas[-1;where 3=i] 	/ calculate distance between each delta of 3
res2:prd(1 2 3 4 5!1 1 2 4 7) di 	/ get the number of potential deviations for each gap between deltas of 3

-1 "The answer for part 2 is: ",.Q.s1[res2];
