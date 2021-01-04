/ read input
data:read0`:day6.txt

/ part 1
sum count each distinct each raze each (0,where "" ~/: data) cut data

/ part 2
data:{x where not x like ""} each data
sum {dict:count each group raze x; sum value[dict] = count x} each data
