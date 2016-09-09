var 
  res: boolean;
  i,m,n,min,max,maxi: integer;
  
begin
  writeln('n -> ');
  readln(n);
  writeln('m -> ');
  readln(m);
    
  if(m = n) then if(m<>1) then writeln('NO') else writeln('YES') else if((n = 1) or (m = 1)) then writeln('YES') else begin      
      if(m>n) then begin
        min:=n;
        max:=m;
      end else begin
        min:=m;
        max:=n;
      end;
      if(max mod min = 0) then writeln('NO') else begin
        res := true;
        maxi := trunc(sqrt(min));
        
        i:= 2;
        repeat
          if(m mod i = 0) then if(n mod i = 0) then begin          
            res:= false;
            writeln('NO');
          end;
          i:=i+1;
        until((i>maxi) or (not res));
        if(res) then writeln('YES');
      end;      
  end;  
end.