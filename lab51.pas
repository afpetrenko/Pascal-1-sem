Program lab51;
var
  n : longint;
  ci : set of byte;
  m : array[1..10] of byte;
  i, s: byte;
  d: integer;
  
Procedure sort();
var
  j, r, k: integer;
Begin
  for j := 1 to s do begin
    k := 0;
      for r := j to s do
        if m[j] = m[r] then inc(k);
          if (k <= 1) and (m[j] in ci) then writeln(m[j]); end;
end;

Procedure mas();
var 
j, r, d, d1: integer;
l: boolean;
Begin
  j := 1;
  r := 0;
  d := 10;
  d1 := 1;
  l := false;
  
  if l = false then begin
    for j := 1 to s do begin
     m[j] := ((n mod d) - r) div d1;
     r := m[j];
     d := d * 10;
     d1 := d1 * 10;
     
     if (n mod d = n) then l := true;
    end; end;
     
end;

    
      
begin

  writeln('Введите число');
  ci := [0..9];
  readln(n);
  n := abs(n);
  s := 0;
  d := 1;
  
    for i := 1 to 10 do begin
      if n div d <> 0 then begin
        inc(s);
        d := d *10; end; end;
        
 writeln('Количество цифр в числе: ', s); 
  mas();
  writeln('Цифры в числе');
  sort();

      
end.
    
  