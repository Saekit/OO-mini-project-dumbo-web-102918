class RecipeCard
  attr_reader :rating, :recipe, :user, :date

  @@all = []
  def initialize(rating, recipe, user, date)
    @rating = rating
    @recipe = recipe
    @user = user
    @date = date
    @@all << self
  end

  def self.all
    @@all
  end


end
