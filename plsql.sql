Declare

Cursor empcursor is select eno.bp.hra,da,tax.pf.net from emp_cursor;

en emp_cursor.eno% type;

bemp_cursor.bp%type;

h emp_cursor.hra% type:

d emp_cursor.da% type;

temp_cursor.tax% type;

pemp_cursor.pf%type;

n emp_cursor.net%type;

begin

open empcursor;

loop

fetch empcursor into en,b,h,d,t.p.n;

if empcursor% NOTFOUND then

exit;

end if:

n:=b+h+d-(t+p);

update emp_cursor set Net=n where eno=en;

end loop;

close empcursor;

end:
