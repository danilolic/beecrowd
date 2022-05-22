fib = gets.to_i

fib0 = 0
fib1 = 1
sequence = [fib0, fib1]

(fib - 2).times do
  next_fib = fib0 + fib1

  sequence.push(next_fib)

  fib0 = fib1
  fib1 = next_fib
end

puts sequence.join(' ')
