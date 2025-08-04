Declare

cursor ebcursor is select cno.p_unit,c_unit,totunits,amt from ebbill;

cn1 ebbill.cno% type;

pu ebbill.p_unit% type;

cu ebbill.c_unit%type;

tu ebbill.totunits% type;

tamt ebbill.amt%type:

Begin

open ebcursor;

loop

fetch ebcursor into cn1.pu,cu,tu,tamt;

if ebcursor% NOTFOUND then

exit:

end if;

tu:=cu-pu;

if tu<=100 then tamt:=0;

elsif tu>100 and tu<=200 then tamt: tu*3.00;

elsif tu >200 and tu<=300 then tamt: tu*4.00;

else

tamt: tu 5.00;

end if;

update ebbill set totunits=tu,amt=tamt where cno=cn1;

end loop;

close ebcursor;

end;
