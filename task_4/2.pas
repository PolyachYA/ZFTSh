const N=30;
const M=10000;
var
  a: array[1..N] of integer;
  i,min: integer;
begin
  // this block isn't about task. it's only array's generation
  // --------------------------------
  randomize;
  for i:= 1 to N do begin 
    a[i] := random(2*M+1)-M;
    write(a[i],' ');
  end;
  writeln;
  // --------------------------------
  
  // here the task begins    
  min:=M;
  for i:= 1 to N do if( (abs(a[i])>=1000) and (abs(a[i])<=9999) and (abs(a[i]) mod 18 = 0) and (abs(a[i]) mod 10 = 6) and (a[i]<min) ) then min:=a[i];  
  
  if(min=M) then writeln('not detected')
  else writeln('min = ',min);
end.