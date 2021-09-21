require 'open-uri'
require 'nokogiri'

puts "Enter ingredient to search:"
ingredient = gets.chomp
url = "https://www.bbcgoodfood.com/search/recipes?q=#{ingredient}"

html_text = URI.open(url).read
html = Nokogiri::HTML(html_text)

html.search('.standard-card-new__article-title').each do |recipe|
  puts "- #{recipe.text}"
end
