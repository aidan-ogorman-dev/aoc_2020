/ read input
t:read0`:day13.txt
bus:"I"$t[0]
nums:("I"$","vs t[1]) except 0N

/ part 1
(min[res]-bus) * nums first where res = min res:{[b;n] n*last til["i"$1+ceiling b%n]}[bus]'[nums]
