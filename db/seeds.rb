# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         "Epicure au Bristol",
    address:      "112 rue du Fg St-Honoré 75008 Paris",
    phone_number:  "+ 33 6 12 12 32 12",
    category:        "japanese"
  },
  {
    name:         "La clé des champs",
    address:      "3 Rue du chat qui tousse",
    phone_number:  "02 34 52 45 56",
    category:       "French"
  },
  {
    name:         "Los Ciclistos",
    address:      "3 Ruta de la Muerte",
    phone_number:  "02 34 52 56",
    category:       "Spanish"
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
