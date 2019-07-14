#3. Заполнить массив числами фибоначчи до 100
fib = [0,1]
i = 2

loop do
  next_fib = fib[-1] + fib[-2]
  break fib if next_fib >= 100
  fib << next_fib
  i += 1
end

print fib
