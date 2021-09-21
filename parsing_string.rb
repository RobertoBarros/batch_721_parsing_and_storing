name = File.read('name.txt')
puts "My name is #{name}"


puts "Change your name:"
name = gets.chomp
File.write('name.txt', name)
