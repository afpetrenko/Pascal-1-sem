program lab3;
const
  n=3;
  m=4;
var
    matrix: array[1..n,1..m] of integer = ((2, 1, 4, 3), (-2, 6, -5, 4), (-3, 5, 2, 2));
    i, j: integer;
    max := 0;
begin           
    max := matrix[1,1];
    
    for i := 1 to 3 do 
        for j := 1 to 4 do
            if abs(matrix[i,j]) > abs(max) then
             max := matrix[i,j];  
    writeln('Максимальное число по модулю: ', max);
 end.
        