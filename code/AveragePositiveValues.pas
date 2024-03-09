program CalculateAveragePositiveFunctionValues;

const
  START_X = -2;
  END_X = 2;
  STEP = 0.2;

var
  currentX, functionSum, functionAverage: real;
  numPositiveValues: integer;

function CalculateFunction(x: real): real;
begin
  CalculateFunction := Power(x, 3) + Power(cos(x), 4);
end;

begin
  functionSum := 0;
  numPositiveValues := 0;
  
  currentX := START_X;
  while currentX <= END_X do
  begin
    if CalculateFunction(currentX) > 0 then
    begin
      functionSum := functionSum + CalculateFunction(currentX);
      Inc(numPositiveValues);
    end;
    currentX := currentX + STEP;
  end;
  
  if numPositiveValues > 0 then
  begin
    functionAverage := functionSum / numPositiveValues;
    writeln('Среднее значение: ', functionAverage:0:3);
  end
  else
    writeln('Нет положительных значений на этом интервале.');
end.