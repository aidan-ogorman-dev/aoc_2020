/ read input
t:read0`:day4.txt

/ part 1
tags:`byr`iyr`eyr`hgt`hcl`ecl`pid`cid!()
d:(!) ./: ("S: ")0:/: trim " "sv/: (0,where t ~\: "") cut t
res:count d:d where all each (key[tags] except `cid) in/: key each d
-1 "The answer for part 1 is: ",.Q.s1[res];

/ part 2
tbl:0#enlist tags;
{`tbl upsert x;} each d;

delete from `tbl where not ("I"$byr) within 1920 2002;
delete from `tbl where not ("I"$iyr) within 2010 2020;
delete from `tbl where not ("I"$eyr) within 2020 2030;
delete from `tbl where not hgt like "*[ci][mn]";
delete from `tbl where (hgt like "*cm") and not ("I"$-2 _' hgt) within 150 193;
delete from `tbl where (hgt like "*in") and not ("I"$-2 _' hgt) within 59 76;
delete from `tbl where not (hcl like "#[0-f][0-f][0-f][0-f][0-f][0-f]");
delete from `tbl where not (`$ecl) in `amb`blu`brn`gry`grn`hzl`oth;
delete from `tbl where not pid like "[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]";

res2:count tbl;
-1 "The answer for part 2 is: ",.Q.s1[res2];
