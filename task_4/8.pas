function CtoI(s: char): shortint;
begin
  CtoI:=ord(s)-ord('0');
end;

function ItoC(i: shortint): char;
begin
  ItoC := chr(ord('0')+i);
end;

var
  s: string;
  i,l: integer;
  a: array of int64;
  r: int64;
begin
  read(s);
  s:='+'+s;
  l:= length(s) div 2;
  SetLength(a,l);
  for i:= 1 to l do a[i-1]:=CtoI(s[2*i]);
  for i:= l downto 1 do delete(s,2*i,1);          
  for i:= l downto 1 do if(s[i]='*') then begin
    a[i-2]*=a[i-1];
    a[i-1]:=-1;
  end;  
  r:=0;
  for i:= 0 to l-1 do begin
    if(a[i]>0) then case s[i+1] of
      '+': r+=a[i];
      '-': r-=a[i];
    end;
  end;
  writeln('=',r);
end.