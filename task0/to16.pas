program ex;

{Компилировать с флагом -Sc}

var answer: longword = 0;
	c: char;
	toint: byte = 0;

begin
	writeln('Введите число');
	while true do
		begin
			read(c);
			case c of
				'0'..'9': toint := ord(c)-ord('0');
				'a'..'f': toint := ord(c)-ord('a') + 10;
				'A'..'F': toint := ord(c)-ord('A') + 10;
			else
				break
			end;
			answer := answer shl 4;
			answer += toint;
		end;
	writeln(answer);
end.