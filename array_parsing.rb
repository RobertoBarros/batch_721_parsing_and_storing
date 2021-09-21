lucky_numbers = File.read('lucky_numbers.txt').split(',')

lucky_numbers = lucky_numbers.map { |number|  number.to_i}.sort
#lucky_numbers = lucky_numbers.map(&:to_i).sort

lucky_numbers.each do |number|
  puts "- #{number}"
end

puts "Enter a new luck number"
new_number = gets.chomp

lucky_numbers << new_number

File.write('lucky_numbers.txt', lucky_numbers.join(','))