class Recipe
  attr_reader :name,
              :ingredients_required,
              :ingredients
  def initialize(name)
    @name = name
    @ingredients_required = Hash.new(0)
    @ingredients = []
  end

  def add_ingredient(ingredient, amount)
    @ingredients_required[ingredient] += amount
    @ingredients << ingredient if ingredients.include?(ingredient) == false
  end

  def total_calories
    ingredients.inject(0) {|sum, ingredient| sum + (ingredient.calories * ingredients_required[ingredient])}
  end
end
