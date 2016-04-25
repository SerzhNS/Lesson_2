# encoding: UTF-8

# Урок_2. Задача 5. Заданы три числа, которые обозначают число, месяц, год ...


def enter_data
  puts ("Введите дату в формате дд.мм.гггг")
  m_date = gets().chomp.split(".")
  m_date.map! {|item| item = item.to_i }

  month_days = {1=>31, 2=>28, 3=>31, 4=>30, 5=>31, 6=>30, 7=>31, 8=>31, 9=>30, 10=>31, 11=>30, 12=>31}

  # Определение високосного года
  month_days[2] = 29 if (m_date[2]%4 == 0 && m_date[2]%100 != 0) || m_date[2]%400 == 0
  
# p (month_days) # Temp
# p (m_date)     # Temp
    
  return month_days, m_date
end 

loc_var = enter_data

month_days = loc_var[0]
m_date = loc_var[1]


# Проверка корректности ввода даты
if m_date[1] > 12 || m_date[0] > month_days[m_date[1]] then
  loop do
    puts ("?? Вы ввели некорректную дату. Повторите ввод.")
    loc_var = enter_data
    month_days = loc_var[0]
    m_date = loc_var[1]
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