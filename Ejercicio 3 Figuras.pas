program Figuras;
uses crt;

procedure Volcan;
const
  tamanios: array[1..6] of integer = (2,4,8,16,32,64);
var
  i, j, espacios: integer;
begin
  writeln('Figura: Volcan');
  for i := 1 to 6 do
  begin
    espacios := (64 - tamanios[i]) div 2;  { centrar }
    for j := 1 to espacios do
      write(' ');
    for j := 1 to tamanios[i] do
      write('*');
    writeln;
  end;
  writeln;
end;

procedure Mosaico;
var
  i, j: integer;
begin
  writeln('Figura: Mosaico');
  for i := 1 to 8 do
  begin
    for j := 1 to 8 do
    begin
      if (i + j) mod 2 = 0 then
        write('*')
      else
        write(' ');
    end;
    writeln;
  end;
end;

begin
  clrscr;
  Volcan;
  Mosaico;
  readln;
end.
