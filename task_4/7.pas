function isPInt(s: string): boolean;
var 
  i,l: integer;
  res: boolean;
begin  
  res:=true;
  l:= length(s); i:=1;
  while((i<=l) and res) do begin
    if((s[i]<'0') or (s[i]>'9')) then res:=false;
    inc(i);
  end;
  isPInt:=res;
end;

function BigIntToStr(s: string; n: integer): array of shortint;
var 
  i,l: integer;
  res: array of shortint;
begin
  l:=length(s);
  SetLength(res,n);
  if((n>=l) and isPInt(s)) then begin    
    for i:= l downto 1 do res[i+n-l-1]:=ord(s[i])-ord('0');
    for i:= 0 to n-l-1 do res[i]:=0;
    BigIntToStr:=res;
  end else BigIntToStr:=BigIntToStr('0',n);
end;

procedure disp(a: array of shortint; n: integer);
var 
  i: integer;
begin
  for i:= 0 to n-1 do write(a[i]);
end;

function subtract(a,b: array of shortint; n: integer): array of shortint;
// a MUST be >= b and both MUST be >0
var
  i,k: integer;
  r: array of shortint;
begin
  SetLength(r,n);
  k:=0;
  while(a[k]=0) do inc(k);  
  for i:= n-1 downto k+1 do if(a[i]<b[i]) then begin
    a[i-1]-=1;
    a[i]+=10;
  end;
  for i:= n-1 downto 0 do r[i]:=a[i]-b[i];
  subtract:=r;
end;

function isZero(a: array of shortint; n: integer): boolean;
var
  r: boolean;
  i: integer;
begin
  r:=true;
  i:=n-1;
  while((i>=0) and r) do begin
    if(a[i]<>0) then r:=false;
    dec(i);
  end;
  isZero:=r;
end;

function minimize(a: array of shortint; n: integer; var k: integer): array of shortint;
var 
  i: integer;
  r: array of shortint;
begin  
  k:=0;
  if(isZero(a,n)) then k:=n-1
  else while(a[k]=0) do inc(k);  
  SetLength(r,n-k);
  for i:= n-k-1 downto 0 do r[i]:=a[k+i];
  k:=n-k;
  minimize:=r;
end;

var 
  s1,s2: string;
  a,b: array of shortint;
  n,k1,k2,k3: integer;
begin
  readln(s1);
  readln(s2);  
  n:= max(length(s1),length(s2));
  a:=BigIntToStr(s1,n);
  b:=BigIntToStr(s2,n);    
  disp(minimize(a,n,k1),k1);
  writeln;
  writeln('-');
  disp(minimize(b,n,k2),k2);
  writeln;
  writeln('=');
  disp(minimize(subtract(a,b,n),n,k3),k3);  
end.
