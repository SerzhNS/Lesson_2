# encoding: UTF-8

# Урок_2. Задача 5. Заданы три числа, которые обозначают число, месяц, год ...


def enter_data
  puts ("Введите дату в формате дд.мм.гггг")
  m_date = gets().chomp.split(".")
  m_date.map! {|item| item = item.to_i }

  month_days = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

  # Определение високосного года
  month_days[1] = 29 if (m_date[2]%4 == 0 && m_date[2]%100 != 0) || m_date[2]%400 == 0
  
  return month_days, m_date
end 

entered = enter_data

month_days = entered[0]
m_date = entered[1]


# Проверка корректности ввода даты
if m_date[1] > 12 || m_date[0] > month_days[m_date[1]-1] 
  loop do
    puts ("?? Вы ввели некорректную дату. Повторите ввод.")
    entered = enter_data
    month_days = entered[0]
    m_date = entered[1]
    break unless m_date[1] > 12 || m_date[0] > month_days[m_date[1]] 
  end
  
end 

# Расчет номера дня
num_day = 0
num = 1
while num < m_date[1] 
  num_day += month_days[num] unless m_date[1] == 1
  num += 1
end

num_day += m_date[0]

puts ("==> Result\nНомер дня - #{num_day}")