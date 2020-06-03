require 'minitest/autorun'
require 'minitest/pride'
require './lib/ingredient'

class IngredientTest < MiniTest::Test
  def text_it_exists
    ingredient1 = Ingredient.new({name: "Cheese", unit: "oz", calories: 50})

    assert_instance_of Ingredient, ingredient1
  end
end
