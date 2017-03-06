const MinMark=9; // 3+3+3
const MaxMark=25; // 10+10+5

function getMark(s: string): integer;
var 
  i,p: integer;
  m: array[1..3] of integer;
  s1: string;
begin
  s+=' ';  
  delete(s,1,pos(' ',s));
  for i:= 1 to 3 do begin
    p:= pos(' ',s);
    s1:= copy(s,1,p-1);
    if(length(s1)=2) then m[i]:=10
    else m[i]:=ord(s1[1])-ord('0');
    delete(s,1,p);
  end;
  if((m[1]<MinMark) or (m[2]<MinMark) or (m[3]<MinMark)) then getMark:=0
  else getMark:=m[1]+m[2]+m[3];
end;

var  
  n,k,i,b,s,max: integer;  
  m: array[MinMark..MaxMark] of integer;
  f: text;  
begin
  assign(f,'in.txt');
  reset(f);

  readln(f,n);
  readln(f,k);  
  max:=MinMark-1;
  if(k<n) then begin      
    for i:= 1 to n do begin
      readln(f,b);
      if(b>=MinMark) then m[b]+=1;
      if(b>max) then max:=b;
    end;
    i:=MaxMark;
    s:=0;
    while((s<=k) and (i>=MinMark)) do begin      
      s+=m[i];      
      i-=1;
    end;
    if(i=MinMark-1) then writeln('res = ',MinMark)
    else if(i+2>max) then writeln('too many same good results')
    else if(i>=MinMark) then writeln('res = ',i+2);       
  end else begin
    for i:= 1 to n do readln(f,k);    
    writeln('res = ',MinMark);
  end;
  
  assign(f,'in.txt');
  reset(f);
  readln(f,n);
  readln(f,k);
  var arr: array of integer;
  SetLength(arr,n);
  for i:= 0 to n-1 do readln(f,arr[i]);
  for i:= 0 to n-1 do for s:= i+1 to n-1 do if(arr[s]>arr[i]) then begin
    b:=arr[i];
    arr[i]:=arr[s];
    arr[s]:=b;
  end;  
  writeln('k = ',k);
  for i:= 0 to k-1 do write(arr[i],' ');
  write(' | ');
  for i:= k to n-1 do write(arr[i],' ');
    
  close(f);

end.
{ just to help with tests
var
  i: integer;
begin
  randomize;
  for i:= 1 to 50 do writeln(random(25-9+1)+9);
end.
}