/ read input
tix:read0`:day16.txt

/ part 1
calc_error_rate:{[t]
  cyn:(0,where tix like\:"") _ tix;
  criteria:first cyn;
  ranges:"I"$/:"-" vs/: raze "  "vs/: trim criteria except\: .Q.a,":";
  ntix:last cyn;
  ntix_nums:"I"$/: "," vs/: 2 _ ntix;
  num_win_range:not each any each flip ntix_nums within\:/: ranges;
  err:sum raze ntix_nums @' where each num_win_range;
  :err
 };

res:calc_error_rate[tix]
-1 "The answer for part 1 is: ",.Q.s1[res];
