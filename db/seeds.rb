require 'faker'

Dog.destroy_all
Dogsitter.destroy_all
Stroll.destroy_all
City.destroy_all

20.times do
  Dog.create(nick_name: Faker::Name.first_name, city: City.all.sample)
end

20.times do
  DogSitter.create(name: Faker::Name.first_name, city: City.all.sample)
end

20.times do
  Stroll.create()
end

20.times do
  City.create(name: Faker::Address.city)
end














# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
