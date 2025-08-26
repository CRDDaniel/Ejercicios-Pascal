program DecimalARomano;
uses crt;

const
  valores: array[1..13] of integer = (1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1);
  simbolos: array[1..13] of string[2] = ('M', 'CM', 'D', 'CD', 'C', 'XC', 'L', 'XL', 'X', 'IX', 'V', 'IV', 'I');

var
  numero, i: integer;

begin
  clrscr;
  write('Ingresa un numero decimal (1 - 3999): ');
  readln(numero);

  if (numero < 1) or (numero > 3999) then
  begin
    writeln('Error: el numero debe estar entre 1 y 3999.');
  end
  else
  begin
    write('Numero romano: ');
    i := 1;
    while numero > 0 do
    begin
      while numero >= valores[i] do
      begin
        write(simbolos[i]);
        numero := numero - valores[i];
      end;
      i := i + 1;
    end;
  end;

  readln;
end.
