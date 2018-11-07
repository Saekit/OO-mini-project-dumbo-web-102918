class Ingredient
  attr_reader :ingredient

  @@all = []
  def initialize(ingredient)
    @ingredient = ingredient
    @@all << self
  end

  def self.all
    @@all
  end

  # def self.most_common_allergen
  #
  # end

end
