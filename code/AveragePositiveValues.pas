program AveragePositiveValues;

const
    MinX: integer = -2;
    MaxX: integer = 2;
    Stepize: real = 0.2;

var
  x: real;
  sum: real; 
  average: real;
  positiveCount: integer;

function Func(x: Real): Real;
begin
  Func := Power(x, 3) + Power(cos(x), 4);
end;

begin
  sum := 0;
  positiveCount := 0;
  x := MinX;
  while x <= MaxX do
  begin
    if Func(x) > 0 then
    begin
      sum := sum + Func(x);
      positiveCount := positiveCount + 1;
    end;
    x := x + Stepize;
  end;

  if positiveCount > 0 then
  begin
    average := sum / positiveCount;
    writeln('Среднее арифметическое положительных значений функции: ', average:0:3);
  end
  else
    writeln('Положительных значений функции на заданном интервале не обнаружено.');
end.