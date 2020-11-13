# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'open-uri'
require 'json'

drinks = open("https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list").read
drinks = JSON.parse(drinks)

all_drinks = drinks["drinks"].map {|drink| drink["strIngredient1"]}
all_drinks.delete('rum')
all_drinks = all_drinks[0,30]
all_drinks = ["Light rum", "Applejack", "Gin", "Dark rum", "Sweet Vermouth", "Strawberry schnapps",
 "Scotch", "Apricot brandy", "Triple sec", "Southern Comfort", "Orange bitters", "Amaretto", "Tea", "Champagne",
   "Coffee liqueur", "Bourbon", "Tequila", "Vodka", "Bitters", "Sugar",
    "Kahlua", "demerara Sugar", "Dubonnet Rouge", "Watermelon", "Lime juice", "Creme de Cacao", "Grenadine", "Port",
      "Coffee brandy", "Red wine", "Grapefruit juice", "Ricard", "Sherry", "Cognac", "Sloe gin", "Apple juice",
       "Pineapple juice", "Lemon juice", "Sugar syrup", "Milk", "Strawberries", "Chocolate syrup", "Yoghurt", "Mango",
        "Ginger", "Lime", "Cantaloupe", "Berries", "Grapes", "Kiwi", "Tomato juice", "Cocoa powder", "Chocolate", "Heavy cream",
         "Galliano", "Peach Vodka", "Ouzo", "Coffee", "Water", "Espresso", "Angelica root", "Orange",
          "Cranberries", "Johnnie Walker", "Apple cider", "Everclear", "Cranberry juice", "Egg yolk", "Egg", "Grape juice", "Peach nectar", "Lemon",
           "Firewater", "Lemonade", "Lager", "Whiskey", "Absolut Citron", "Pisco", "Irish cream", "Ale", "Chocolate liqueur", "Midori melon liqueur",
            "Sambuca", "Cider", "Sprite", "Blackberry brandy", "Peppermint schnapps", "Creme de Cassis"]



# all_drinks.each do |drink|
#   Cocktail.create(name: drink)
# end

puts all_drinks

all_drinks.each do |drink|
  url = open("https://www.thecocktaildb.com/api/json/v1/1/search.php?s=#{drink}").read
  url = JSON.parse(url)
  if url['drinks']
    puts url['drinks'][0]['strDrink'].class
    puts url['drinks'][0]['strDrinkThumb'].class
    Cocktail.create(name: url['drinks'][0]['strDrink'], picture: url['drinks'][0]['strDrinkThumb'])
  end
end

# Ingredient.create(name: "lemon")
# Ingredient.create(name: "ice")
# Ingredient.create(name: "mint leaves")
# Ingredient.create(name: "orange")

# Cocktail.create(name: 'Mojito')
# Cocktail.create(name: 'Long Island Iced Tea' )
# Cocktail.create(name: 'Daiquiri')
# Cocktail.create(name: 'Margarita')
# Cocktail.create(name: 'Bloody Mary')
# Cocktail.create(name: 'Cosmopolitan')
# Cocktail.create(name: 'Moscow Mule')

# Dose.create(description: '2cl', cocktail_id: 1, ingredient_id: 1)
# Dose.create(description: '5cl', cocktail_id: 2, ingredient_id: 1)
# Dose.create(description: '10cl', cocktail_id: 3, ingredient_id: 1)
# Dose.create(description: '8cl', cocktail_id: 4, ingredient_id: 1)
# Dose.create(description: '20cl', cocktail_id: 5, ingredient_id: 1)
