require 'json'
require 'open-uri'

puts "Enter github username:"
github_username = gets.chomp
url = "https://api.github.com/users/#{github_username}"

user_text = URI.open(url).read

user = JSON.parse(user_text)

puts "Name: #{user['name']}"
puts "Company: #{user['company']}"
puts "Bio: #{user['bio']}"