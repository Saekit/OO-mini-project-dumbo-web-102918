class User
  attr_reader :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

 def recipe_cards
   RecipeCard.all.select { |card| card.user == self}
 end

def recipes
  recipes_card.map { |card| card.recipe}
end


 def add_recipe_card(recipe, date, rating)
   RecipeCard.new(rating, recipe, self, date)
 end

 def declare_allergen(ingredient)
   Allergen.new(ingredient, self)
 end

 def allergens_helper
   Allergen.all.select { |allergen| allergen.user == self}
 end

 def allergens
   allergens_helper.map {|allergen| allergen.ingredient}
 end

 def top_three_ratings
   recipe_cards.sort_by {|card| card.rating}.reverse
 end

 def top_three_recipes
   top_three_ratings.map {|card| card.recipe}[0..2]
 end


 def most_recent_recipe
   recipes.last
 end

end
