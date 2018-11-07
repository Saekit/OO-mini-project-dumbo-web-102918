class Allergen
  attr_reader :user, :ingredient

  @@all = []
  def initialize(ingredient, user)
    @ingredient = ingredient
    @user = user
    @@all << self
  end

  def self.all
    @@all
  end

  def self.hash
    counted = Hash.new(0)
    self.all.each { |aller| counted[aller.ingredient] += 1}
    counted
  end
end
