cpf = gets

splitted_cpf = cpf.split(/\.|-/)

splitted_cpf.each do |cpf_part|
  puts cpf_part 
end
