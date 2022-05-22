number_of_turns = gets.to_i

rules = [ 
  "tesoura_papel",
  "papel_pedra",
  "pedra_lagarto",
  "lagarto_Spock",
  "Spock_tesoura",
  "tesoura_lagarto",
  "lagarto_papel",
  "papel_Spock",
  "Spock_pedra",
  "pedra_tesoura"
]

number_of_turns.times do |i|
  sheldon_choice, raj_choice = gets.split

  if sheldon_choice == raj_choice
    puts "Caso ##{i+1}: De novo!"
  elsif rules.include?("#{sheldon_choice}_#{raj_choice}")
    puts "Caso ##{i+1}: Bazinga!"
  else
    puts "Caso ##{i+1}: Raj trapaceou!"
  end
end