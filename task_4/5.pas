var 
  s,s1,sn: string[255];
  i,p,l: integer;
begin
  readln(s);
  s+=' ';
  sn:='';
  while(pos(' ',s)>0) do begin
    p:=pos(' ',s);
    s1 := copy(s,1,p-1);
    l:=length(s1);
    for i:= 1 to l-1 do if(s1[i]<>s1[l]) then sn+=s1[i] else sn+='-';
    sn+= (s1[l] + ' ');
    delete(s,1,p);
  end;
  writeln(sn);
end.