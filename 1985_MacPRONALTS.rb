number_of_items_to_order = gets.to_i

menu = {
  '1001' => 1.50,
  '1002' => 2.50,
  '1003' => 3.50,
  '1004' => 4.50,
  '1005' => 5.50
}

total = 0

number_of_items_to_order.times do
  item_number, quantity = gets.split

  total += menu[item_number] * quantity.to_i
end

puts ("%.2f" % total)