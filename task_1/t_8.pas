var 
  i,N,s,a: integer;
  err: boolean;
begin
  write('N -> ');
  readln(N);
  if(N>=1) then begin
    s := (N*(N+1)) div 2; // sum 1 to N
    err:=false;
    i:=0;
    while((i<N-1) and (not err)) do begin    
      i:=i+1;
      write('-> ');
      readln(a);
      if((a>N) or (a<1)) then begin
        err:=true;
        writeln('ERROR');
      end else s:=s-a;
    end;
    if(not err) then writeln('you did not enter ',s);
  end else writeln('ERROR');
end.