const N=20;
const M=20;
// better test with  M~=N
var
  a,b: array of integer;  
  i1,i2: integer;
  r: boolean;
begin
  // this block isn't about task. it's only arrays generation
  // --------------------------------
  randomize;
  writeln('initial arrays');
  SetLength(a,N); // arrays are dynamic in case Sort() is implemented for dynamic ones only
  SetLength(b,N);
  for i1:= 0 to N-1 do begin 
    a[i1] := random(2*M+1)-M;  // set numbers
    b[i1] := random(2*M+1)-M;    
  end;
  Sort(a); // sort numbers upward
  Sort(b);
  for i1:= 0 to N-1 do write(a[i1],' '); // display numbers
  writeln;
  for i1:= 0 to N-1 do write(b[i1],' ');
  writeln;
  // --------------------------------
  
  // here the task begins  
  writeln('A\B quick');
  i1:=0; i2:=0;
  while(i1<=N-1) do begin    
    while(a[i1]>b[i2]) do begin
      inc(i2);
      if(i2=N) then break;
    end;
    
    // we reached the end of 2nd array -> display all left elements from 1st array because all they are bigger than any element in 2nd array
    if(i2=N) then begin
      while(i1<=N-1) do begin
        write(a[i1],' ');
        inc(i1);
      end;
      break;
    end;    
    
    if(a[i1]<b[i2]) then write(a[i1],' ')
    else write('__ ');
    inc(i1);
  end;
end.