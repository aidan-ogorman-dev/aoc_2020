/ read input and generate tiles
tiles:read0`:day20.txt
ts:(0,where tiles like\:"") _ tiles
ts:enlist[1 _ ts 0],2 _' ts _ 0
tile_numbers:"J"$-1 _' last each " "vs/: (tiles where tiles like\:"Tile*")

/ part 1
get_corners:{[tn;ts]
  prd tn where 2 = check_tiles[ts]'[til count ts]
 }

check_tiles:{
  sum any each check_tile[x y]'[x _ y]
 }

check_tile:{
  rows:get_lines x;
  columns:get_lines flip x;
  comps:(y[0;];y[;0];reverse[y][0;];last'[y]);

  all each raze (columns,rows) =\:/: comps
 }

get_lines:{raze ((::);reverse)@\:/: (first;last)@\: x}

get_corners[tile_numbers; ts]
