program lab12;
  var m, l, k, n, min, a: integer;
    Begin
    
    readln(m, l, k, n);
    min := m;
      if (min>l) then
      min := l;
      
      if (min>k) then
      min := k;
      
      if (min>n) then
      min:=n;
    a := m+l+k+n-min;
    writeln(a);
    end.
   
      
      