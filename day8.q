/ read input
ins:("S*";" ")0:`:day8.txt
ins:@[ins;1;{value each x except\:"+"}]

/ part 1
.ao.dpos:()
.ao.acc:0
cmds:`nop`acc`jmp!({[x;y] x+1};{[x;y] .ao.acc+:y; :x+1};{[x;y] x+y})
calc_position:{[pos] 
	$[pos in .ao.dpos; :(); .ao.dpos,:pos]; 
	cmd:flip[ins][pos]; pos:cmds[cmd 0] . (pos;cmd 1); 
	.z.s[pos]
 }

calc_position[0];
-1 "The answer for part 1 is: ",.Q.s1[.ao.acc];

/ part 2
