/ read input
grid:read0`:day11.txt

/ part 1
f:{(.[y;x]; "L") 3 < sum (y ./: x +/: (-1 0 1 cross -1 0 1) _ 4) = "#"}
h:{if[.[y;x] ~ "."; :"."]; (.[y;x]; "#") 0 = sum (y ./: x+/: (-1 0 1 cross -1 0 1) _ 4) = "#"}

r:{[mat] show res:count[mat] cut ((h[;mat];f[;mat]) raze[mat] = "#") @' til[count mat] cross til count mat; res}/[grid]
sum raze[r]="#"

/
/ part 2
/ check the row, column and reverse of each for a match
q)chk:{$["#" = first x; (<) . first each group[1 _ x] "#L"; "L" = first x; any "#" in 1 _ x; :x]}
q)look_around:{[grid;x] r:x[1] rotate grid x 0; c:x[0] rotate grid[;x 1]; chk each (r;c;(1#r),reverse 1 _r;(1#c),reverse 1 _c)}
q)look_around[grid;1 2]
1100b
q)grid[1;2]
"#"
q)grid
"#.L#.##.L#"
"#L#####.LL"
"L.#.#..#.."
...
