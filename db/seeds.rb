# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Ingredient.create(name: "lemon")
# Ingredient.create(name: "ice")
# Ingredient.create(name: "mint leaves")

10.times do
  new_cocktail = Cocktail.new(name: Faker::Name.name)
  new_cocktail.save!
  new_ingredient = Ingredient.new(name: Faker::Food.ingredient)
  new_ingredient.save!
  new_dose = Dose.new(description: Faker::Food.measurement, cocktail_id: new_cocktail.id, ingredient_id: new_ingredient.id)
  new_dose.save!
end
