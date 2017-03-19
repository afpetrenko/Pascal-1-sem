program lab41;

  
Procedure matrix;

const
  n=30;
  
var i: integer;

begin

  for i:=1 to n do
    begin
      matrix[i] :=100-random(200);
        end;
end;

Procedure op(var matrix:matrix);

var
 i, c, c1, r: integer;
 
begin
    
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
          
   for i := 1 to n do
      write (matrix[i], ' ');
end;
   begin 
end.
    
      
    
