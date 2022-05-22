def valid_license_plate?(license_plate_first_part, license_plate_last_part)
  correct_size?(license_plate_first_part, license_plate_last_part) &&
    valid_number?(license_plate_last_part) &&
    valid_letters?(license_plate_first_part)
end

def correct_size?(license_plate_first_part, license_plate_last_part)
  license_plate_first_part&.size == 3 && license_plate_last_part&.size == 4
end

def valid_number?(license_plate_last_part)
  /^[-0-9]+$/.match?(license_plate_last_part)
end

def valid_letters?(license_plate_first_part)
  /^[-A-Z]+$/.match?(license_plate_first_part)
end

def which_day_can_i_drive(license_plate_last_part)
  rules = {
    '1': 'MONDAY',
    '2': 'MONDAY',
    '3': 'TUESDAY',
    '4': 'TUESDAY',
    '5': 'WEDNESDAY',
    '6': 'WEDNESDAY',
    '7': 'THURSDAY',
    '8': 'THURSDAY',
    '9': 'FRIDAY',
    '0': 'FRIDAY'
  }

  last_digit_number = license_plate_last_part.split('').last

  rules[last_digit_number.to_sym]
end

number_of_turns = gets.to_i

number_of_turns.times do
  license_plate_first_part, license_plate_last_part = gets.chomp.split('-')

  if valid_license_plate?(license_plate_first_part, license_plate_last_part)
    puts which_day_can_i_drive(license_plate_last_part)
  else
    puts 'FAILURE'
  end
end
