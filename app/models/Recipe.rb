class Recipe
  attr_reader :recipe

  @@all = []

  def initialize(recipe)
    @recipe = recipe
    @@all << self
  end

  def self.all
    @@all
  end

  def self.most_popular

  end

  def users
    
  end

end
