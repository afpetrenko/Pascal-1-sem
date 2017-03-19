type
mes= (jan, feb, mar, apr, may, jun, jul, aug, sep, oct, nov, dec);
day=1..31;
Kvartal=1..4;
year=1900..2016;
var
  kv:Kvartal;
  d : day;
  m :mes;
  n : 1..12;
  g:year;
BEGIN
  Write('введите дату D,N,G ');  readln(d,n,g);
   Case n of
   	1:m:=jan;
   	2:m:=feb;
   	3:m:=mar;
  	4:m:=apr;
   	5:m:=may;
   	6:m:=jun;
   	7:m:=jul;
   	8:m:=aug;
   	9:m:=sep;
   	10:m:=oct;
   	11:m:=nov;
   	12:m:=dec;
  end;
  Case n of
   1,2,3:kv:=1;
   4,5,6:kv:=2;
   7,8,9:kv:=3;
   10,11,12:kv:=4;
  end;
   Case m of
  Jan, may, jul, aug, oct,dec ,mar:
	    If d=31 then
		  	Begin
          if (m=dec) then begin
            Kv:=1;d:=1;m:=jan; inc(g);
            End
            else
            begin
          if (m=mar) then Kv:=Kv+1;
			 	  d:=1;  m:=succ(m);
			 	  end
			 	  end
	    else
			 inc(d);
  apr, nov,jun,sep:
          If d=30 then
			Begin
			 if (m=jun) or (m=sep) then Kv:=kv+1;
			 d:=1; m:=succ(m);
			end
			else
			inc(d);
  feb:
  If ((g mod 400=0) or (g mod 4=0) and (g mod 100<>0))  then 
           if (d=29) then
                     begin
				d:=1;  m:=mar; 
			   end
			   else
			   inc(d);
		else          
            if (d=28) then
			     begin
				  d:=1;  m:=mar; 
			     end
			     else
			     inc(d);			      
end;	
  writeln('дата следующего дн€: ');
  write(d:2);
   Case m of
   	jan : write(' €нвар€');
   	feb : write(' феврал€');		
   	mar : write(' марта');
   	apr : write(' апрел€');
   	may : write(' ма€');
  	jun : write(' июн€');
   	jul : write(' июл€') ;
   	aug : write(' августа') ;
   	sep : write(' сент€бр€');
 	oct : write(' окт€бр€');
 	nov : write(' но€бр€');
 	dec : write(' декабр€');
   end;
 
   write(' ',g,' √од ',Kv, ' квартал') 
END.

