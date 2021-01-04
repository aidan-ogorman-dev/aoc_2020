/ read input
x:read0`:day12.txt
actions:`$1#'x
mag:"I"$1 _' x

/ part 1
compass:`N`E`S`W!({(x;0)};{(0;x)};{(neg x;0)};{(0;neg x)})
calc_position:{[d;a;m]
  $[a in `R`L;
    [
      d[1]:(((+;-) a = `L) . (d[1];"j"$m%90)) mod 4;
      :d
    ]; 
    a = `F;
      :(d[0] + compass[`N`E`S`W d 1] @ m;d 1); 
    :(d[0] + compass[a] @ m;d 1)
 ]
 }

sum abs first calc_position/[(0 0;1);actions;mag]
