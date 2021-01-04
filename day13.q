/ read input
t:read0`:day13.txt
bus:"I"$t[0]
nums:("I"$","vs t[1]) except 0N

/ part 1
res:(min[res]-bus) * nums first where res = min res:{[b;n] n*last til["i"$1+ceiling b%n]}[bus]'[nums]
-1 "The answer for part 1 is: ",.Q.s1[res];

/ part 2
