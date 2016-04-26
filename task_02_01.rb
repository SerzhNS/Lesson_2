# encoding: UTF-8

# Урок_2. Задача 1. Сделать хеш, содеращий месяцы и количество дней в месяце. В цикле выводить те месяцы, у которых количество дней ровно 30.

month_days = {jan: 31, feb: 28, march: 31, apr: 30, may: 31, jun: 30, jul: 31, aug: 31, sept: 30, oct: 31, nov: 30, dec: 31}

month_days.each do |month, days|
  puts month if days == 30
end