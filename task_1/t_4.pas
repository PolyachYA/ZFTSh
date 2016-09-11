var
  i,a,b,k,max: integer;
begin
  b:=14;
  k:=0;
  max:=0;  
  repeat
    write('-> ');
    readln(a);
    if(a=14) then begin
      k:=k+1;
    end else begin      
      if(k>max) then max:=k;
      k:=0;
    end;
  until(a=0);
  writeln(max);
end.