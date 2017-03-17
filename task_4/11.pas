function isNum(c: char): boolean; begin isNum:=(c>='0') and (c<='9'); end;
function isOkCh(c: char): boolean; begin isOkCh:= ((c>='a') and (c<='z')) or ((c>='A') and (c<='Z')) or isNum(c) or (c='_'); end;

function isInt(s: string): boolean;
var 
  i,c: integer;
begin
  val(s,i,c);
  if(c=0) then isInt:= abs(i)<=2000000000
  else isInt:=false;  
end;

function isOkVar(s: string): boolean;
var
  i,l: integer;
  r: boolean;
begin
  if(length(s)>0) then begin
    r:=isOkCh(s[1]) and (not isNum(s[1]));
    l:= length(s);
    i:= 2;
    while(r and (i<=l)) do begin
      r:=isOkCh(s[i]);  
      i+=1;
    end;  
    isOkVar:= (r and (s<>'BEGIN') and (s<>'END'));
  end else isOkVar:=false;
end;

var
  s0: string;
  s: array[1..3] of string;
  i,p: integer;
begin
  readln(s0);  
  p:=pos(':=',s0);  
  s0:=copy(s0,1,p-1)+' := '+copy(s0,p+2,length(s0))+' ';
  while(pos('  ',s0)>0) do delete(s0,pos('  ',s0),1);
  for i:= 1 to 3 do begin
    p:=pos(' ',s0);
    s[i]:=copy(s0,1,p-1);
    delete(s0,1,p);      
  end;  
  
  if((s[2]=':=') and (length(s0)=0) and isOkVar(s[1]) and (isOkVar(s[3]) or isInt(s[3]))) then writeln('all is ok')
  else writeln('something is wrong');
  
end.