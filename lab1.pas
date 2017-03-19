program lab1;
  var x, y: real;
    begin
    write('При x=');
    read(x);
      if (x<3) and (x>-3) then y := 0 
                          else
                              if (x>=3) then y := 3-x 
                                        else
                                            y := -x-3;
       writeln('y=', y);
        end.
    
    