Program lab33;

var
  a : array[1..12] of integer = (4,1,-2,1,2,3,1,5,-4,-1,4,3);
  i, k, k1 : byte;
  j, sum : integer;
  flag: boolean;
  
Begin
  k := 12;
  
  writeln('Массив до ранжирования');
  for i := 1 to 12 do
    write(a[i]:3);
  writeln();
  
  repeat
   flag := false;
  for k1 := 1 to k do
    begin
    for i := 1 to 11 do
      begin
      if a[i] > a[i+1] then 
        begin
        j := a[i+1];
        a[i+1] := a[i];
        a[i] := j;
        flag:= true;
        end;
      end; 
    end;
    until not flag;
    
  writeln('Массив после ранжирования');
  for i := 1 to 12 do
    write(a[i]:3);
  writeln();
    
  sum := a[1] + a[2] + a[12];
  writeln('Сумма');
  write(sum:3);
    
end.
      
        