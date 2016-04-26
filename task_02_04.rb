# encoding: UTF-8

# Урок_2. Задача 4. Заполнить хеш гласными буквами, где значением будет являтся порядковый номер буквы в алфавите (a - 1).
# A, E, I, O, U, and sometimes Y. See https://simple.wikipedia.org/wiki/Vowel

vowel = ["a","e","i","o","u","y"]
# eng_alf = ("a".."z").to_a Избыток. Использовать диапазон прямо в each. Использовать each_with_index, чтобы передавать индекс.
vowel_hash = {}

("a".."z").each_with_index {|letter, ind| vowel_hash[letter] = ind if vowel.include?(letter) }

print ("==> Result\n#{vowel_hash}\n")