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

  def allergen
    Allergen.all.select { |aller| aller.ingredient == self }
  end

  def self.most_common_allergen
    Allergen.hash.sort_by {|k,v| v}.last[0]
  end



end
