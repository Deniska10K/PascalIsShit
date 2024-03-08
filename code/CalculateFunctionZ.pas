program CalculateFunctionZ;

var
  a, b: real;
  Z: real;
  squareSum: real;

begin
  writeln('Введите значение для переменной a:');
  readln(a);
  
  writeln('Введите значение для переменной b:');
  readln(b);
  
  squareSum := sqr(a) + sqr(b);
  
  Z := sqrt(sqrt(squareSum)) + sin(squareSum) - 1 / squareSum;
  
  writeln('Значение функции Z(a, b): ', Z:0:3);
end.