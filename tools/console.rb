require_relative '../config/environment.rb'





skyler = User.new('Skyler')
raquel = User.new('Raquel')
kevin = User.new("Kevin")

ramen = Recipe.new('Instant Ramen')
steak = Recipe.new('Steak')
pbandj = Recipe.new("Peanut Butter and Jelly Sandwich")
cookies = Recipe.new("Cookies")
cake = Recipe.new("Cake")


RecipeCard.new(3, ramen, skyler, '08-08')
RecipeCard.new(5, steak, raquel, 'never' )
RecipeCard.new(1, steak, skyler, '2-14')
RecipeCard.new(4, pbandj, kevin, '11-7')
RecipeCard.new(4, cookies, skyler, '11-7')
RecipeCard.new(2, pbandj, skyler, '11-7')
RecipeCard.new(3, pbandj, raquel, '11-7')
RecipeCard.new(3, cake, raquel, '11-7')
RecipeCard.new(3, cookies, raquel, '11-7')



peanutbutter = Ingredient.new("peanutbutter")
jelly = Ingredient.new("jelly")
bread = Ingredient.new("bread")
sugar = Ingredient.new("sugar")
flour = Ingredient.new("flour")
noodles = Ingredient.new("noodles")
broth = Ingredient.new("broth")
beef = Ingredient.new("beef")

RecipeIngredient.new(pbandj, peanutbutter, jelly, bread)
RecipeIngredient.new(ramen, noodles, broth)
RecipeIngredient.new(cookies, sugar, flour)
RecipeIngredient.new(steak, beef)
RecipeIngredient.new(cake, sugar, flour)

Allergen.new(noodles, raquel)
Allergen.new(peanutbutter, kevin)
Allergen.new(peanutbutter, skyler)
Allergen.new(flour, raquel)



binding.pry

0
