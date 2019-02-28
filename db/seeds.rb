# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'Faker'


# Let's create some people!

10.times do
  Person.create(
    name: Faker::Name.name,
    age: Faker::Number.between(1, 90),
    hair_color: Faker::Color.color_name,
    eye_color: Faker::Color.color_name,
    gender: Faker::Gender.binary_type,
    alive: true
    )
end