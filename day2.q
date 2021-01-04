/ read input
pwds:read0`:day2.txt

/ part 1
lims:("II";"-")0: first each " "vs/: pwds
letter:last each first each ":"vs/:pwds
x:last each " "vs/: pwds
res:sum (sum each letter =' x) within lims
-1 "The answer for part 1 is: ",.Q.s1[res];

/ part 2
inds:("II";"-")0: first each " "vs/: pwds
res2:sum 1 = sum each letter =' x@'-1+flip inds
-1 "The answer for part 2 is: ",.Q.s1[res2];
