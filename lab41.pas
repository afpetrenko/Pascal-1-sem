program lab41;
Const
  n = 30;
Type
  ar = array[1..n] of integer;
Var
  m: ar;
  i : byte;
  
  
Procedure random(var matrix: ar);
Const
  n = 30;
Var
  i : byte;
Begin
  for i:=1 to n do
      matrix[i] :=100-random(200);
end;


Procedure sort(var matrix: ar);
Const
  n = 30;
Var
  i, c, c1, r: integer;
Begin
  c := 0;
 for i:=1 to n do
      if matrix[i] < 0 then
      c := c + 1;
      
    for c1 := 1 to c do
      for i:=1 to n-1 do
        if matrix[i] < 0 then
          begin r := matrix[i+1];
            matrix[i+1] := matrix[i];
              matrix[i] := r;
                end;
end;

Begin
random(m);
writeln('Массив до сортировки ');
for i := 1 to n do
  write(m[i],' ');
writeln();
sort(m);
writeln('Массив после сортировки ');
for i := 1 to n do
  write(m[i],' ');
end.