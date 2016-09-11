var
  divider,a,b,c,m1,m2,mm1,mm2: integer;
begin
  divider:=39;
  writeln('enter numbers ->');  
  read(a,b);
  if(a<b) then begin
    m1:= a;
    m2:= b;
  end else begin
    m1:= b;
    m2:= a;  
  end;
  if(m1*m2 mod divider = 0) then begin
    mm1:=m1;
    mm2:=m2;
  end else begin
    mm1:=-1;
    mm2:=-2;
  end;
  
  while((mm2<0) and (mm1<0) and (a>0)) do begin  
    read(a);
    if(a>0) then if(a*m1 mod divider = 0) then begin
      if(m1<a) then begin
        mm1:=m1;
        mm2:=a;
      end else begin
        mm1:=a;
        mm2:=m1;
      end
    end else begin
      if(a*m2 mod divider = 0) then begin
        if(m2<a) then begin
          mm1:=m2;
          mm2:=a;
        end else begin
          mm1:=a;
          mm2:=m2;
        end;    
      end else begin
        if(a<m1) then begin 
          m2:=m1;
          m1:=a;
        end
        else if(a<m2) then m2:=a;
      end;
    end;
  end;
  while(a>0) do begin
    read(a);
    if(a>0) then if(a*mm1 mod divider = 0) then begin
      if(a<mm1) then begin
        mm2:=mm1;
        mm1:=a;
      end else if(a<mm2) then mm2:=a;
    end else if((a*mm2 mod divider = 0) and (a<mm1)) then if(a<mm1) then mm1:=a;              
  end;
  
  if(mm1<0) then writeln(m1*m2)
  else writeln(mm1*mm2);
end.