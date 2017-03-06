var
  names: array[1..10] of string;
  v: array[1..10] of integer;
  i,j,k,n: integer;
  s,s0: string;
begin
  s0:='NAN';
  readln(n);
  k:=0;
  for i:= 1 to 10 do names[i]:=s0;
  for i:= 1 to n do begin
    readln(s);
    j:=1;
    while((s<>names[j]) and (names[j]<>s0)) do inc(j);
    if(names[j]=s0) then begin  
      inc(k);
      names[j]:=s;
      v[j]:=1;
    end else inc(v[j]);
  end;
  for i:= 1 to k do begin
    for j:= i+1 to k do begin
      if(v[j]>v[i]) then begin
        s:=names[j];
        names[j]:=names[i];
        names[i]:=s;
        n:=v[j];
        v[j]:=v[i];
        v[i]:=n;
      end;
    end;
  end;  
  writeln;
  i:=1;
  while(v[i]>=v[3]) do begin
    writeln(names[i],' - ',v[i],' votes');
    inc(i);
  end;
end.