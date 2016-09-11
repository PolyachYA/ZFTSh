var
  i,N,k: integer;
  a,am,ai,b,bm,bi,c,cm,ci,d,dm,di: integer;
begin
  write('N -> ');
  readln(N);
  if(N mod 2 = 0) then begin
    N:=N div 2;
    am:=N; 
    bm:=N div 2;
    cm:=N div 3;
    dm:=N div 4;
    k:=0;
    for ai:= 0 to am do for bi:= 0 to bm do for ci:= 0 to cm do for di:= 0 to dm do
      if(N = ai+2*bi+3*ci+4*di) then k:=k+1;      
    writeln(k);
  end else writeln('IMPOSSIBLE');
end.