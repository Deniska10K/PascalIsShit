program CalculateFunctionZ;

var
  a: real;
  b: real;
  Z: real;
  sumSquares: real;

begin
  writeln('Введите значение для переменной a:');
  readln(a);
  writeln('Введите значение для переменной b:');
  readln(b);
  
  sumSquares := a * a + b * b;
  
  Z := Power(sumSquares, 1/4) + sin(sumSquares) - 1 / sumSquares;
  
  writeln('Значение функции Z(a, b): ', Z:0:3);
end.