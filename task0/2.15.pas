program ex;

var x, y : integer;

label outIf;

begin
	writeln('ввод координат');
	readln(x, y);
	if ((0<=y) and (1>=y) and (x>=0) and (x<=2)) then 
		writeln('принадлежит A')
	else
		writeln('не принадлежит A');

	if (x >= 0) then
		begin
			if abs(y) <=-x+2 then writeln('принадлежит Б') else writeln('не принадлежит Б');
		end
	else
		begin
			if sqr(x)+sqr(y) < 4 then writeln('принадлежит Б') else writeln('не принадлежит Б');
		end;

	if ((sqr(x)+sqr(y) <= 1) and not(((x>=0) and (abs(y) < -x+1)) or ((x<=0) and (abs(y) < x+1)))) then writeln('принадлежит В') else writeln('не принадлежит В');

	if ((x>0) and (y>0)) then
		begin
			writeln('НЕ принадлежит С');
			goto outIf;
		end;
	if ((sqr(x)+sqr(y) < 4) or ((abs(y)>2) or (abs(x)>2))) then writeln('НЕ принадлежит С') else writeln('Принадлежит С');
	outIf:
end.
