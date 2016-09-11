var
  a,b,c,max,min,mid,x2,n2,d2: integer;
begin
  write('enter a,b,c :' + #13 + 'a = ');
  readln(a);
  write('b = ');
  readln(b);
  write('c = ');
  readln(c);
  // no arrays because we aren't allowed to use them because we haven't them in task text
  // so use "if sorting"
  if((a>=b) and (a>=c)) then begin 
    max:=a;
    if(b>=c) then begin
      mid:=b; min:=c;
    end else begin
      mid:=c; min:=b;
    end
  end else 
  if((b>=a) and (b>=c)) then begin
    max:=b;
    if(a>=c) then begin
      mid:=a; min:=c;
    end else begin
      mid:=c; min:=a;
    end  
  end else begin
    max:=c;
    if(a>=b) then begin
      mid:=a; min:=b;
    end else begin
      mid:=b; min:=a;
    end  
  end;
  // program actually
  if(max <= mid+min) then begin
    x2:= sqr(max);
    d2:= sqr(mid);
    n2:= sqr(min);
    if(x2>d2+n2) then writeln('OBTUSE')
    else if(x2<d2+n2)then writeln('ACUTE')
    else writeln('RECTANGULAR');
  end else writeln('IMPOSSIBLE');  
end.