require_relative '../config/environment.rb'





skyler = User.new('Skyler')
raquel = User.new('Raquel')
kevin = User.new("Kevin")

ramen = Recipe.new('Instant Ramen')
mustard_merlot_sauce_steak =Recipe.new('Mustard Merlot Sauce Steak')
pbandj = Recipe.new("Peanut Butter and Jelly Sandwich")
cookies = Recipe.new("cookies")


RecipeCard.new(3, ramen, skyler, '08-08')
RecipeCard.new(5, mustard_merlot_sauce_steak, raquel, 'never' )
RecipeCard.new(1, mustard_merlot_sauce_steak, skyler, '2-14')
RecipeCard.new(4, pbandj, kevin, '11-7')
RecipeCard.new(4, cookies, skyler, '11-7')
RecipeCard.new(2, pbandj, skyler, '11-7')
RecipeCard.new(3, pbandj, raquel, '11-7')

peanuts = Ingredient.new("peanuts")
RecipeIngredient.new(pbandj, peanuts)
Allergen.new(peanuts, kevin)


binding.pry

0
