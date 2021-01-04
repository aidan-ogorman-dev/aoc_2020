/ read input
map:read0`:day3.txt

/ part 1
f:{sum .[x = "#";]@/:(c where (c:y*/:til count x)[;0]<=count x) mod'\: (count x;count flip x)}
f[map;1 3]

/ part 2
prd f[map]'[(1 1;1 3;1 5;1 7;2 1)]
