program lab42;

var
  m, n, r: integer;
  max, max2: integer;
  m1: array [1..10, 1..10] of integer;


Procedure input(j, k: integer);
var
  i, h: integer;
begin
  for i := 1 to j do
  begin
    for h := 1 to k do
      m1[i, h] := random(15)-5;
  end;
end;

Procedure output(j, k: integer);
var
  i, h: integer;
begin
  writeln('Массив:');
  for i := 1 to j do
  begin
    writeln;
    for h := 1 to k do
      write(m1[i, h]:4);
  end;
end;

Procedure fmax(j, k: integer);
var
  i, h, l1, l2: integer;
Begin
    for i := 1 to j do
    begin
      for h := 1 to k do
        begin
        if m1[i, h] > max2 then 
        
          begin
          max := m1[i, h];
          r := 0;
          
              for l1 := 1 to j do
                  begin
                     for l2 := 1 to k do
                        if max = m1[l1, l2] then
                        inc(r);
                          if r > 1 then
                          max2 := max;
                  end;
          end;                                
    end;
end;
end;



begin
  writeln('Введите размерность массива: ');
  readln(m, n);
  input(m, n);
  output(m, n);
  fmax(m, n);
  writeln;
  writeln;
  if max2 = 0 then 
    writeln('В массиве нету числа подходящего условию задачи') 
              else begin
              writeln('Максимальный элемент повтарющийся 2 раза и более');
              writeln(max2); end;
end.