# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
require 'csv'

csv_data = File.read('lib/assets/plants_list.csv')
csv = CSV.parse(csv_data, :headers => true)
csv.each do |row|
  hash = row.to_hash
  Plant.create!(name: hash["Scientific Name"], symbol: hash["Accepted Symbol"])
end
