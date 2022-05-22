age = gets.to_i

years = age / 365
months =  (age % 365) / 30
days = (age % 365) % 30

puts "#{years} ano(s)"
puts "#{months} mes(es)"
puts "#{days} dia(s)"