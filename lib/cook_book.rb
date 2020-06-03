class CookBook
  attr_reader :recipes,
              :ingredients
  def initialize
    @recipes = []
    @ingredients = []
  end

  def add_recipe(recipe)
    @recipes << recipe
    recipe.ingredients.each do |ingredient|
      @ingredients << ingredient.name if ingredients.include?(ingredient.name) == false
    end
  end
end
