# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


100.times.each do |i|
  Beer.create!(name: Faker::Beer.name, style: Faker::Beer.style, alcohol: Faker::Beer.alcohol)
  Cat.create!(name: Faker::Name.first_name, age: rand(1..20))
  Superhero.create!(name: Faker::Superhero.name, power: Faker::Superhero.power)
  Starwar.create!(character: Faker::StarWars.character, quote: Faker::StarWars.quote, planet: Faker::StarWars.planet )
end