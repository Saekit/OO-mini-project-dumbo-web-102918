class Recipe
  attr_reader :rating, :recipe, :user, :date

  @@all = []

  def initialize(recipe)
    @recipe = recipe
    @@all << self
  end

  def self.all
    @@all
  end

  def recipe_cards
   RecipeCard.all.select { |card| card.recipe == self}
  end

  def recipe_ingredient
    RecipeIngredient.all.select { |recip_ing| recip_ing.recipe == self}
  end

  def self.most_popular
    RecipeCard.hash.sort_by {|k,v| v}.last[0]
  end

  def users
    recipe_cards.map {|card| card.user}
  end

  def ingredients
    recipe_ingredient.map { |recip_ing| recip_ing.ingredient}
  end

  def allergens
    ingredients.select do |ingredient|
      ingredient.allergen.length > 0
    end
  end

  def add_ingredients(ingredients)
    ingredients.each do |ingredient|
      new_ingredient = Ingredient.new(ingredient)
      RecipeIngredient.new(self, new_ingredient)
    end
  end

end
