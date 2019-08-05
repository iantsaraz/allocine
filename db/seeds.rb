require "faker"
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
a = ["action", "horreur", "comédie", "drame"] 

100.times do
 
 user = Movie.create!(name: Faker::Game.title, year: Faker::Number.between(from: 1990, to: 2020), genre: a[rand(4)] , synopsis: Faker::Movie.quote , director: Faker::Name.name , allocine_rating: (Faker::Number.between(from: 0, to: 5.0)).round(1)  , already_seen: false )
end
puts "loading success"