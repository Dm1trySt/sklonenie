def sklonenie(number, krokodil, krokodila, krokodilov)
  #Проверка введенных данных
  # класс Numeric - класс, которому принадлежат все числа
  # он проверяет: НЕ(!) принадлжит ли number этому классу
  if (number == nil || !number.is_a?(Numeric))
    number = 0
  end
  ostatok = number % 10

  if number % 100 >= 11 && number % 100<= 14
    return krokodilov
  end
  if ostatok == 1
    return krokodil
  elsif ostatok >=2 && ostatok <=4
    return krokodila
  elsif ostatok > 4 || ostatok == 0
    return krokodilov
  end
end
i = 0
while i < 50 do
skolko = ARGV[0]
#если не был передан параметр спрашиваем
# у пользователя количество
if skolko == nil
  puts"Введите количество:"
  skolko = STDIN.gets.to_i
end
#если даже пользователь введет не корректные данные
# .to_i передает 0 в skolko, поэтому проверка в методе
# нужна только как пример
skolko = skolko.to_i

#вывод
puts "#{skolko} " +
  sklonenie(skolko,"кот","кота","котов") +
    sklonenie(skolko," пошел"," пошли"," пошли") +
    " купаться в море!"
end