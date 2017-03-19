program lab32;
const
  n=4;
  m=5;
var
    matrix: array[1..n,1..m] of integer = ((1, 2, -1, 0, 2),(2, 3, -1, 2, 1), (3, -2, 0, 1, -3), (1, -2, 1, 0, -1));
    i, j: integer;
    s := 0;
    sum := 0;
begin         
        for j := 1 to 5 do
            if abs(matrix[3,j]) > 1 then
              begin s := s + 1;
                sum := sum + sqr(matrix[3,j]); end; 

    writeln('Количество элементов больших 1: ', s,'  Сумма квадратов этих элементов: ', sum);
 end.
        