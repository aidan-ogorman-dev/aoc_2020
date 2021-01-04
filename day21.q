/ read input
x:read0`:day21.txt
l:"(contains" vs/: x
ing:" "vs/: l[;0]
alls:trim ","vs/: -1 _' l[;1]

/ part 1
d:a!{(inter/)ing where x in/: alls} each a:distinct raze alls
count raze ing except\: raze value[d]
