# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# db/seeds.rb
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "0221925319", category: "chinese"}
pizza_east = { name: "Pizza East", phone_number: "0221925349", category: "italian", address: "56A Shoreditch High St, London E1 6PQ"}
kingsley_bar = { name: "Kingsley_bar", phone_number: "2344555349", category: "japanese", address: "Shoreditch St, London E1 6PQ"}
monro_chicken = { name: "Monro_chicken", phone_number: "024455349", category: "french", address: "Cape St, London E1 6PQ"}
chicken_town = { name: "Chicken_town", phone_number: "034244349", category: "belgian", address: "Drive St, London E1 6PQ"}

[dishoom, pizza_east, kingsley_bar, monro_chicken, chicken_town ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"


