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

