/ read input
pwds:read0`:day2.txt

/ part 1
lims:("II";"-")0: first each " "vs/: pwds
letter:last each first each ":"vs/:pwds
x:last each " "vs/: pwds
sum (sum each letter =' x) within lims

/ part 2
inds:("II";"-")0: first each " "vs/: pwds
sum 1 = sum each letter =' x@'-1+flip inds
