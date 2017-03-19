program lab34;

const n = 10;

var
  matrix: array [1..n] of integer = (2, 1, -2, 0, 1, -5, 4, -3, -2, 5);
  i, k, b : integer;
  s : real;
  
begin
  b := 1;
  Writeln('Массив');
  for i := 1 to n do
    write(matrix[i]:2);

  writeln;
  
  for i := 1 to n do
    if i mod 2 = 1 then begin
           b := b*matrix[i];  
           k := k + 1; end;
  
  s := exp(ln(b)/k);
          
  writeln('Произведение ', b);
  writeln('Количество ', k);
  writeln('Среднее геометрическое ', s); 
end.
           
          
           
           
           
                    
      
  
