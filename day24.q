/ read input
i:read0`:day24.txt

/ part 1
d:(`$("e";"ne";"nw";"w";"sw";"se"))!(0 1;0.5 0.5;0.5 -0.5;0 -1;-0.5 -0.5;-0.5 0.5)
flip_tiles:{co:(0,1+where x in "ew") _ x; sum d each `$-1 _ co}
sum (count each group flip_tiles'[i]) mod 2
