=begin
5. Заданы три числа, которые обозначают число, месяц, год (запрашиваем у пользователя).
Найти порядковый номер даты, начиная отсчет с начала года.
Учесть, что год может быть високосным.
(Запрещено использовать встроенные в ruby методы для этого вроде Date#yday или Date#leap?)
Алгоритм опредления високосного года: www.adm.yar.ru
=end
print "Введите число: "
date = gets.chomp.to_i
print "Введите месяц: "
month = gets.chomp.to_i
print "Введите год: "
year = gets.chomp.to_i

days_in_a_month = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
days_in_a_month[1] = 29 if year % 400 == 0 || ( year % 4 ==0 && year % 100 != 0)

sum = 0
for i in 0..month-2
  sum += days_in_a_month[i]
end
sum += date

puts "Порядковый номер даты: #{sum}"
