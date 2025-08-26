program TableroAjedrez;
uses crt;

const
  N = 8; 

var
  i, j: integer;

begin
  clrscr;
  writeln('Tablero de Ajedrez (', N, 'x', N, '):');
  writeln;

  for i := 1 to N do
  begin
    for j := 1 to N do
    begin
      if (i + j) mod 2 = 0 then
        write(#219#219)  
      else
        write(#176#176);  
    end;
    writeln;
  end;

  readln;
end.
