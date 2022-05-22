def print(numbers)
    numbers.each do |number|
      puts number
    end
  end
  
  numbers = gets.split.map(&:to_i)
  
  print(numbers.sort)
  puts ''
  print(numbers)