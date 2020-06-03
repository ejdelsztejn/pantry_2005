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

  def highest_calorie_meal
    highest_calories = recipes.map do |recipe|
      recipe.total_calories
    end.max
    recipes.find do |recipe|
      recipe.total_calories == highest_calories
    end
  end
end
