const N=20;
const M=1000;
var
  a: array[1..N] of integer;
  k,i: integer;
begin
  // this block isn't about task. it's only array's generation
  // --------------------------------
  randomize;
  for i:= 1 to N do begin // set array 
    a[i] := random(2*M+1)-M;
    write(a[i],' ');
  end;
  writeln;
  // --------------------------------
  
  // here the task begins      
  k:=0;
  for i:= 2 to N do if(a[i]*a[i-1] < 0) then inc(k);  
      
  writeln(k,' pairs');
end.