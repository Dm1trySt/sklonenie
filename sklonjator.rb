class Sklonjator

  # Принимает число и склоняет слово
  # with_number = false - т.к. иначе тест будет ошибочным,
  # а с постоянным значением сможет начать выполнение
  # и в дальнейшем присвоит значение к данной переменной
  def self.sklonenie(number, kot, kota, kotov, with_number = false )
    #Проверка введенных данных
    # класс Numeric - класс, которому принадлежат все числа
    # он проверяет: НЕ(!) принадлжит ли number этому классу
    if (number == nil || !number.is_a?(Numeric))
      number = 0
    end

    prefix = ""
    prefix = "#{number} " if with_number

    # Получаем последнюю цифру в числе для определения склонения
    ostatok = number % 10

    if number % 100 >= 11 && number % 100 <= 14
      return "#{prefix}#{kotov}"
    end

    # Для 1
    if ostatok == 1
      return "#{prefix}#{kot}"
      # Для 2-4
    elsif ostatok >= 2 && ostatok <= 4
      return "#{prefix}#{kota}"

      # Для 5-9 или 0
    elsif ostatok >= 5 && ostatok <=9 || ostatok == 0
      return "#{prefix}#{kotov}"
    end
  end


    skolko = ARGV[0]
    # Если не был передан параметр спрашиваем
    # у пользователя количество
    if skolko == nil
      puts "Введите количество:"
      skolko = STDIN.gets.to_i
    end
    # Если даже пользователь введет не корректные данные
    # .to_i передает 0 в skolko, поэтому проверка в методе
    # нужна только как пример
    skolko = skolko.to_i

    #вывод
    puts "#{skolko} #{sklonenie(skolko, "kot", "kota", "kotov")}" #+
    #sklonenie(skolko, " пошел", " пошли", " пошли") +
    #" купаться в море!"

end