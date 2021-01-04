/ read input

/ part 1
h:{[x;y]
  val:x@y; 
  pu:x ((first where x=val) + 1+til 3) mod count x;
  nseq:x except pu; 
  r:{x[0],y,x[1]}[(0,1+get_index[val;nseq]) _ nseq;pu]; 
  $[get_index[val;nseq]<y;
    (min(3;count[x]-1+x?val)) rotate r;
    r
   ]
 }

get_index:{
  i:where y = x-1;
  $[not count i;
    .z.s[$[x=1;max[y]+1; x-1];y];
    :first i
   ]
 }

res:1 _ string 10 sv (res?1) rotate res:h/[5 6 2 8 9 3 1 4 7;til[100] mod 9]
-1 "The answer for part 1 is: ",.Q.s1[res];

/ part 2
