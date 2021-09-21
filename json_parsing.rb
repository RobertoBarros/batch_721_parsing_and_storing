require 'json'

beers_text = File.read('./data/beers.json')

beers = JSON.parse(beers_text)

puts beers['title']
puts beers['beers'][0]['name']

beers['hello'] = 'World'

File.open('../beers2.json', 'wb') do |file|
  file.write(JSON.generate(beers))
end