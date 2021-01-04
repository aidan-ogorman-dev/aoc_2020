/ read input
data:read0`:day6.txt

/ part 1
res:sum count each distinct each raze each (0,where "" ~/: data) cut data
-1 "The answer for part 1 is: ",.Q.s1[res];

/ part 2
data:((0,where "" ~/: data) cut data)except\:enlist""
res2:sum {dict:count each group raze x; sum value[dict] = count x} each data
-1 "The answer for part 2 is: ",.Q.s1[res2];
