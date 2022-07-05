puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: ["chinese", "italian", "japanese", "french", "belgian"].sample }
pizza_east =  { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: ["chinese", "italian", "japanese", "french", "belgian"].sample }
rebel_asian =  { name: "Rebel Asian", address: "Rua da Esperança, 164, Lisboa", category: ["chinese", "italian", "japanese", "french", "belgian"].sample }
cow_burger =  { name: "Cow Burger", address: "Avenida Borges Coelho, 52, Lisboa", category: ["chinese", "italian", "japanese", "french", "belgian"].sample }
aguas_livres =  { name: "Águas Livres", address: "Rua Otaviano Costa, 123, Lisboa", category: ["chinese", "italian", "japanese", "french", "belgian"].sample }

[ dishoom, pizza_east, rebel_asian, cow_burger, aguas_livres ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
