/ read input
map:read0`:day3.txt

/ part 1
f:{sum .[x = "#";]@/:(c where (c:y*/:til count x)[;0]<=count x) mod'\: (count x;count flip x)}
res:f[map;1 3];
-1 "The answer for part 1 is: ",.Q.s1[res];

/ part 2
res2:prd f[map]'[(1 1;1 3;1 5;1 7;2 1)];
-1 "The answer for part 2 is: ",.Q.s1[res2];
