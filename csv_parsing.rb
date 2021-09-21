require 'csv'

# PARSING
beers = []

options = {
  col_sep: ',',
  headers: :first_row
}

CSV.foreach('beers.csv', options) do |row|
  beers << [row['Name'], row['Appearance'], row['Origin']]
end

beers.each do |beer|
  puts "#{beer[0]} - #{beer[1]} - #{beer[2]}"
end

# STORING

beers << ['Skol', 'Amarelo', 'Brasil']

CSV.open('beers.csv', 'wb', options) do |csv|
  csv << ['Name', 'Appearance', 'Origin']

  beers.each do |beer|
    csv << beer
  end
end
