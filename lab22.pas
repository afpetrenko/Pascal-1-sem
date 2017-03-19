program lab22;
var s, i, c:real;
begin
  i:=2;
  s:=0;
  c:=1;
  while i<21 do
    begin 
    s:=s+c*(1/i);
    c:=-c;
    i:=i+2;
    end;
 writeln('s=', s);
 end.
    
    