/ read input
x:read0`:day5.txt

/ part 1
row:{first {$[y ~ "F"; (x 0;floor[x[0]+(x[1]-x[0])%2]); (ceiling[x[0]+(x[1]-x[0])%2];x 1)]}/[(0;127);-3 _ x]}
col:{first {$[y ~ "L"; (x 0;floor[x[0]+(x[1]-x[0])%2]); (ceiling[x[0]+(x[1]-x[0])%2];x 1)]}/[(0;7);-3#x]}
id:{ (row[x] * 8) + col[x]}
res:max tickets:id each x
-1 "The answer for part 1 is: ",.Q.s1[res];

/ part 2
res2:first -1 + (asc tickets) where 2 = deltas asc tickets
-1 "The answer for part 2 is: ",.Q.s1[res2];
