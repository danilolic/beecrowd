date = gets.chomp

day, month, year = date.split('/')

puts "#{month}/#{day}/#{year}"
puts "#{year}/#{month}/#{day}"
puts "#{day}-#{month}-#{year}"