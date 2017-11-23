require 'json'
require 'open-uri'

puts "destroying ..."
Dose.destroy_all
Ingredient.destroy_all
Cocktail.destroy_all


url = 'http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
ingredientss = open(url).read
ingredients = JSON.parse(ingredientss)

puts "populating..."

for i in (0..50) do
  a = Ingredient.create(name: ingredients["drinks"][i]["strIngredient1"] )
  b = Cocktail.create(name: "cocktail#{i}")
  c = Dose.new(description:"put a dose of")
  c.cocktail = b
  c.ingredient = a
  c.save
end
