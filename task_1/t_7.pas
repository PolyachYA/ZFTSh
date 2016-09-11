var
  a,b,c,d,e,f: integer;
  i,i2,i3,i4,i5: integer;
  found: boolean;
begin
  write('a = ');
  readln(a);
  write('b = ');
  readln(b);
  write('c = ');
  readln(c);
  write('d = ');
  readln(d);
  write('e = ');
  readln(e);  
  write('f = ');
  readln(f); 
  found:= (f=0);
  for i:= -10 to 10 do begin
    i2:=i*i;
    i3:=i2*i;
    i4:=i3*i;
    i5:=i4*i;
    if(i=0) then begin if(f=0) then writeln('x = ',0); end
    else if(f mod abs(i) = 0) then if(a*i5 + b*i4 + c*i3 + d*i2 + e*i + f = 0) then begin
      writeln('x = ',i);
      found:=true;
    end;
  end;
  if(not found) then writeln('NO SOLUTION');
end.