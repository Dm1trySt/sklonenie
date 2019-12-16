require 'rspec'

require_relative 'sklonjator.rb'

# Тест конкретного класса
# В нашем случае Sklonjator
describe 'Sklonjator' do

  # Проверка с числом 5
  it 'should do ok for KOTOV' do

    # expect(выражение).to условие  -тест ожидает,что выражениеудовлетворит условию
    # eq - равен
    expect( Sklonjator.sklonenie(5, 'kot', 'kota', 'kotov') ) .to eq 'kotov'
  end

  # Автоматизированный сценарий перебора чисел
  # подходящи по сценарию, когда программа выводит 'kotov'
  it 'should do ok for KOTOV _ automated' do
    [5, 6, 7, 8, 9, 0].each do |number|

      # Диапозон от 0 до 100
      #.step - шаг в 10  т.е. 0, 10, 20 и т.д.
      (0..100).step(10) do |i|
        summa =i + number

        # Проверка полученныхданных и ожидаемого результата
        # #{summa}- для того , чтобы при возникновении ошибки
        # было ясно на какой цифре она возникла
        # ture - для вывода числа даже во время ошибки (можно убрать #{summa})
        expect("#{Sklonjator.sklonenie(summa,'kot','kota','kotov',true )}") .to eq "#{summa} kotov"
      end
    end
  end

  # Проверка для 'kot'
  it 'should do ok for KOT' do
    [1, 21, 31, 41, 141].each do |i|
      expect("#{i} #{Sklonjator.sklonenie(i, 'kot','kota','kotov')}") .to eq "#{i} kot"
    end
  end

  it "should do ok for KOTA" do
    [2, 3, 4, 22, 33, 44, 144].each do |i|
      expect("#{i} #{Sklonjator.sklonenie(i,'kot','kota','kotov')}") .to eq "#{i} kota"
    end
  end

  # Проверка частных специальных случаев
  it 'should do ok for KOTOV _ SPECIAL' do
    [10, 11, 12, 14, 111, 312, 1013, 2414].each do |i|
      expect("#{i} #{Sklonjator.sklonenie(i, 'kot', 'kota', 'kotov')}") .to eq "#{i} kotov"
    end

  end

end







