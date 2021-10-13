# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

100.times do
products = Product.new(name:Faker::Food.vegetables, price:Faker::Number.number(digits: 1), img_url:Faker::LoremFlickr.image, description:Faker::Food.description)
products.save
 end