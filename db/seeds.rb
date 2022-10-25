# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


20.times do
  dogs = Dog.new(
    name: Faker::Creature::Dog.name,
    sound: Faker::Creature::Dog.sound,
    age: Faker::Creature::Dog.age,
    gender: Faker::Creature::Dog.gender
  )
  dogs.save
end