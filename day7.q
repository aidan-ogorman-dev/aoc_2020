/ read input
d:read0`:day7.txt

/ part 1
colours:first each "contain" vs/: d
bags:last each "contain" vs/: d
res:{clrs:trim colours where bags like\: "*",x,"*"; $[0=count clrs; :clrs; clrs,raze .z.s each ssr[;"bags";"bag"] each clrs]}["shiny gold"]
count distinct res
