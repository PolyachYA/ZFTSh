var
  m,n,i: integer;  
  r: real;
begin
  write('m -> ');
  readln(m);
  write('n -> ');
  readln(n);
  r:=0;
  for i:= n downto 1 do r:=sqrt(i*m+r);
  writeln(r:6:6);
end.