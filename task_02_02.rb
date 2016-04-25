# encoding: UTF-8

# Урок_2. Задача 2. Заполнить массив числами от 10 до 100 с шагом 5.

fig = 10
arr = []

while fig <= 100
  arr << fig
  fig += 5
end

print ("==> Result\n#{arr}\n")