program lab21;
var min, max, s, x, y: real;
  begin
  readln(min, max, s);
  x := min;
  writeln(' X   :','   Y');
   while x<=max do
    begin if (x<0.5) then
       y:= sqr(sin(x))*sqr(cos(x-1))-sqrt(1+sqrt(sqr(x)))
        else
          
    if (x>=0.5) then
      y:= 2*exp(ln(e)*(x-1))+sqr(ln(x))*cos(x-1);
      writeln( x : 4 : 2,' :  ' , y : 4 : 2);
      x:= x+s
    end;
   end.
   