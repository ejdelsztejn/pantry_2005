class CookBook
  attr_reader :recipes,
              :ingredients,
              :date
  def initialize
    @recipes = []
    @ingredients = []
    @date = Time.now.strftime("%m-%d-%Y")
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
