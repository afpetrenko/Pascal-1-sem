Program lab52;
Const 
  m = 1;
Type
  sng = Record
	name : string [10];
	sqr : real;
	peop, sch, hosp, inst: integer;
	p : real;
	end;
	
Var
  group : array[1..3] of sng;
  b : sng;
  i, r : integer;
  
Procedure output();
var
  j: integer;
Begin
  for j := 1 to 3 do
    with group[j], sng do
    writeln('���:', name:10,' ���������:', peop:8, '  ����� ����:', sch:3, '  ����� �������:', hosp:3, '  ����� �����:', inst:3);
end;

Procedure input();
Begin
    with group[1], sng do
        begin
          name := 'Strana1';
          peop := 100001;
          sch := 500;
          hosp := 120;
          inst := 80;
          p := sch/(peop/1000);
          writeln('����� ���� �� 1��c ������� � 1 ������: ', p); end;
    with group[2], sng do
      begin
        name := 'Strana2';
          peop := 200002;
          sch := 450;
          hosp := 150;
          inst := 40;
          p := sch/(peop/1000);
          writeln('����� ���� �� 1��c ������� � 2 ������: ', p);
        end;
    with group[3], sng do
      begin
        name := 'Strana3';
          peop := 250000;
          sch := 600;
          hosp := 200;
          inst := 120;
          p := sch/(peop/1000);
          writeln('����� ���� �� 1��c ������� � 3 ������: ', p);
          end;
end;
  
Procedure sort();
var
  j, k: integer;
Begin

  for j := 1 to 2 do
    for k := 2 to 3 do
      if group[j].p > group[k].p then
        begin
          b := group[k];
          group[k] := group[j];
          group[j] := b;
        end;
end;
Begin

input();
sort();
output();
end.
          
      
        
        
    
 
  
