/ part 1
res:last {[x] $[not last[x] in distinct -1 _ x; :x,0; last[x] = last prev x; x,1; x,(-/)reverse -2#group[x] last x]}/[2014;2 0 6 12 1 3]
-1 "The answer for part 1 is: ",.Q.s1[res];

/ part 2
