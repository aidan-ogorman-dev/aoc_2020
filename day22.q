/ read input
i:read0`:day22.txt
d:"I"$/:2 _' (where (enlist[""],i) like\:"") _ enlist[""],i

/ part 1
combat:{
  p1:first x 0; 
  p2:first x 1; 
  $[p1>p2; 
    ((1_x 0),p1,p2;1_x 1); 
    (1_x 0;(1_x 1),p2,p1)
   ]
 }

sum raze[combat/[{all 0 < count each x};d]] * reverse 1+til sum count each d
