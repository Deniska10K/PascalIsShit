program SumOfNumbers;

var
  sum: integer;
  i: integer;
  N: Integer;

begin
  sum := 0; // Инициализация суммы
  writeln('Введите число N: ');
  readln(N); // Чтение значения N

  for i := 1 to N do
    sum := sum + i; // Добавление значения i к сумме на каждой итерации

  writeln('Сумма чисел от 1 до ', N, ' равна ', sum);
end.