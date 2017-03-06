const N=20;
const M=1000;
var
  a,b: array[1..N] of integer;  
  i,k: integer;
begin
  // this block isn't about task. it's only array's generation
  // --------------------------------
  randomize;
  writeln('initial array');
  for i:= 1 to N do begin 
    a[i] := random(2*M+1)-M; 
    write(a[i],' ');
  end;
  writeln;
  // --------------------------------
  
  // here the task begins      
  k:=0;
  writeln('modified array');
  for i:= 1 to N do begin
    if(i mod 2 = 0) then begin
      if(abs(a[i]) mod 2 = 0) then begin 
          inc(k);
          b[k]:=a[i];
          write(b[k],' ');
        end else write('___ ');
    end else begin
      inc(k);
      b[k]:=a[i];      
      write(b[k],' ');
    end;
  end;  
  
  writeln;
  writeln('new array');
  for i:= 1 to k do write(b[i],' ');
end.