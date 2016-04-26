#encoding: UTF-8

# Урок_2. Задача 6. Сумма покупок. 

purchase_bug ={}

# Формирование корзины покупок

loop do

  puts ("Введите название товара.")
  g_name = gets().chomp
  break if g_name =="стоп"

  puts "Введите название единицы товара и через ; стоимость этой единицы"
  g_un_pr = gets().chomp.split(";")
  g_unit = g_un_pr[0]
  g_un_price = g_un_pr[1].to_f

  puts "Введите количество приобретенного товара"
  g_vol = gets().chomp.to_f

  purchase_bug[g_name] = {unit: g_unit, unit_price: g_un_price, volume: g_vol, good_price: (g_vol*g_un_price)}

end

# Печать и расчет стоимости покупок
total_sum = 0

# p(purchase_bug) # Temp

puts "==> Корзина покупок включает:"

purchase_bug.each_key do |key| 

  print ("#{key}\t#{purchase_bug[key]}\n")
  # arr = purchase_bug[key].to_a  # Излишнее 
  total_sum += purchase_bug[key][:good_price]  

end

puts "==> Сумма покупок равна #{total_sum.round(2)}"