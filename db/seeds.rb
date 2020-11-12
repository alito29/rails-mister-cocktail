# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# require 'open-uri'
# require 'json'

# drinks = open("https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list").read
# drinks = JSON.parse(drinks)

# all_drinks = drinks["drinks"].map {|drink| drink["strIngredient1"]}

# all_drinks.each do |drink|
#   Cocktail.create(name: drink)
# end

Ingredient.create(name: "lemon")
Ingredient.create(name: "ice")
Ingredient.create(name: "mint leaves")
Ingredient.create(name: "orange")


Cocktail.create(name: 'Mojito')
Cocktail.create(name: 'Long Island Iced Tea' )
Cocktail.create(name: 'Daiquiri')
Cocktail.create(name: 'Margarita')
Cocktail.create(name: 'Bloody Mary')
Cocktail.create(name: 'Cosmopolitan')
Cocktail.create(name: 'Moscow Mule')


Dose.create(description: '2cl', cocktail_id: 1, ingredient_id: 1)
Dose.create(description: '5cl', cocktail_id: 2, ingredient_id: 1)
Dose.create(description: '10cl', cocktail_id: 3, ingredient_id: 1)
Dose.create(description: '8cl', cocktail_id: 4, ingredient_id: 1)
Dose.create(description: '20cl', cocktail_id: 5, ingredient_id: 1)

