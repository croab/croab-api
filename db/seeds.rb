# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

# Destroy existing products
Product.destroy_all

# Create products
puts "Creating products..."
i = 1
100.times do
  puts "Product #{i} - generated"
  name = Faker::Coffee.blend_name
  brand = Faker::Restaurant.type
  description = Faker::Restaurant.description
  product = Product.new(name: name, brand: brand, price: rand(0..100), description: description)
  product.save!
  i += 1
end
puts "Products created."
