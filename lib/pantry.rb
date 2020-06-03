class Pantry
  attr_reader :stock
  def initialize
    @stock = Hash.new(0)
  end

  def stock_check(ingredient)
    return stock[ingredient] if stock.keys.include?(ingredient)
    return 0
  end

  def restock(ingredient, amount)
    @stock[ingredient] += amount
  end
end
