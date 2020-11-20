# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# 10.times do
#   ingredient = Ingredient.new(
#     name: Faker::Food.ingredient
#     )
#   ingredient.save!
# end

# 10.times do
#   cocktail = Cocktail.new(
#     name: Faker::Beer.name
#     )
#   cocktail.save!
# end

response = RestClient.get "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
repos = JSON.parse(response)
repos["drinks"].each do |ingredient|
  Ingredient.create(name: ingredient["strIngredient1"])
end
