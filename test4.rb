=begin
4. Заполнить хеш гласными буквами, где значением будет являтся порядковый номер
буквы в алфавите (a - 1).
=end
alphabet = "абвгдеёжзийклмнопрстуфхцчшщъыьэюя"
vowels = "аеёиоуыэюя"
vowels_hash = {}

vowels.length.times do |i|
  vowels_hash[vowels[i]] = alphabet.index(vowels[i]) + 1
end

print vowels_hash
