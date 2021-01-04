/ read input
l:"I"$read0`:day1.txt

/ part 1
res:(*/)l where 2020 in/: l+/:l
-1 "The answer for part 1 is: ",.Q.s1[res];

/ part 2
res2:(*/)distinct raze l where each 2020 in/:/: l+/:/:l+/:l

-1 "The answer for part 2 is: ",.Q.s1[res2];
