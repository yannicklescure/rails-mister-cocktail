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

url = 'http://static.giantbomb.com/uploads/original/9/99864/2419866-nes_console_set.png'
cocktail = Cocktail.new(name: 'NES')
cocktail.remote_photo_url = url
cocktail.save
puts 'Finished!'
