require 'minitest/autorun'
require 'minitest/pride'
require './lib/pantry'

class PantryTest < MiniTest::Test
  def test_it_exists
    pantry = Pantry.new

    assert_instance_of Pantry, pantry
  end

  def test_stock_starts_empty
    pantry = Pantry.new

    assert_equal ({}), pantry.stock
  end
end
