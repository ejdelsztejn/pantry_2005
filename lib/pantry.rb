class Pantry
  attr_reader :stock
  def initialize
    @stock = Hash.new(0)
  end

  def stock_check(ingredient)
    return stock[ingredient] if stock.keys.include?(ingredient)
    0
  end

  def restock(ingredient, amount)
    @stock[ingredient] += amount
  end

  def enough_ingredients_for?(recipe)
    recipe.ingredients.each do |ingredient|
      return false if stock[ingredient] < recipe.ingredients_required[ingredient]
    end
    return true
  end
end
