program TrianguloNumerico;
uses crt;
const
  N = 10;
var
  fila, col, mitad: integer;
  arr: array[1..100] of integer;
begin
  clrscr;
  for fila := 1 to N do
  begin
    mitad := fila;
    for col := 1 to (2*fila - 1) do
    begin
      if col <= fila then
        arr[col] := (col + fila - 1) mod 10
      else
        arr[col] := arr[2*fila - col];
    end;

    { imprimir espacios para centrar }
    for col := 1 to N - fila do
      write(' ');

    { imprimir la fila }
    for col := 1 to (2*fila - 1) do
      write(arr[col]);

    writeln;
  end;
  readln;
end.

