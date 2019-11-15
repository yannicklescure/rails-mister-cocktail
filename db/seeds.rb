# db/seeds.rb

puts 'Cleaning database...'
Ingredient.destroy_all

puts 'Creating ingredients...'
cocktails_attributes = [
  {
    name: "lemon"
  },
  {
    name: "ice"
  },
  {
    name: "mint leaves"
  }
]

Ingredient.create!(cocktails_attributes)

# Ingredient.create(name: "lemon")
# Ingredient.create(name: "ice")
# Ingredient.create(name: "mint leaves")
puts 'Finished!'
