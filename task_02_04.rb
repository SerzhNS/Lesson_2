# encoding: UTF-8

# Урок_2. Задача 4. Заполнить хеш гласными буквами, где значением будет являтся порядковый номер буквы в алфавите (a - 1).
# A, E, I, O, U, and sometimes Y. See https://simple.wikipedia.org/wiki/Vowel

vowel = ["a","e","i","o","u","y"]
eng_alf = ("a".."z").to_a
vowel_hash = {}
i = 1

eng_alf.each do |letter|
  if vowel.include?(letter) then
    vowel_hash[letter] = i
  end
  i += 1
end

print ("==> Result\n#{vowel_hash}\n")