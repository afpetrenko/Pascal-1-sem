program lab13;
  var z, y1, y2, x: real;
  begin
  readln(x);
    y1:=x-4;
    if (x>-1) then
    y2:=sqrt(x+1);
    
    if (x<=-1) then
    y2:= sqrt(sqr(x))-1;
    
    if (y1>2*y2) then
    z:= y1+y2 
      else
        z:=3*y1-y2;
    writeln(z);
end.    