/ read input
i:read0`:day14.txt
is:(where i like\:"mask*") _ i

/ part 1
bitmask_size:max "I"$first each "]"vs/: last each "[" vs/: i
.ao.bitmask:(1+bitmask_size)#enlist 36#0b vs "j"$0
run_bitmask:{[i]
  mask:last "= " vs first i;
  vals:flip ("I"$'last each "[" vs/: first each "]" vs/: 1 _ i; "I"$last each "= "vs/: 1 _ i); 
  {[m;i;v] 
    :@[`.ao.bitmask;i;:;"b"$(-36#0b vs "j"$v) ^ "I"$'m];
   }[mask]'[vals[;0];vals[;1]]
 }

run_bitmask each is;
sum 2 sv/: .ao.bitmask
