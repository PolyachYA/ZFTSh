var
  N: integer; // N <= 10^6
  a1,a2,a3,a4,a5,a6: integer;
begin
  write('N -> ');
  readln(N);
  
  a1:= N mod 10; N:=N div 10;
  a2:= N mod 10; N:=N div 10; if(a2 = 0) then a2:=10;
  a3:= N mod 10; N:=N div 10; if(a3 = 0) then a3:=11;
  a4:= N mod 10; N:=N div 10; if(a4 = 0) then a4:=12;
  a5:= N mod 10; N:=N div 10; if(a5 = 0) then a5:=13;
  a6:= N mod 10; N:=N div 10; if(a6 = 0) then a6:=14;
  if((N = 1) or ((a1<a2) and (a2<a3) and (a3<a4) and (a4<a5) and (a5<a6))) then writeln('YES') 
  else writeln('NO');
end.