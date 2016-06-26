class RecipeBook
  def initialize
    @recipes = []
  end

  def load_recipes(filename)
    CSV.read(filename, {:headers => true}) do |row|
      recipe = Recipe.new(row["id"], row["name"],.....)
      recipes<<recipe
    end
  end

  def list_recipes
    recipes.each do |recipe|
      puts recipe.id, recipe.name
  end

  def find_recipe_by_id(recipe_id)
    recipes.each do |recipe|
      if recipe.id == recipe_id
        puts recipe
      end 
    end

    raise "Can't find a recipe with an id of #{recipe_id.inspect}" unless recipe
    recipes
  end
end



