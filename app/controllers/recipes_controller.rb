class RecipesController < ApplicationController

  def one_recipe_method
    recipe = Recipe.first
    render json: {
                  title: recipe.title,
                  chef: recipe.chef,
                  ingredients: recipe.ingredients,
                  directions: recipe.directions,
                  }
  end


  def index
    recipes = Recipe.all
    render json: recipes.as_json
  end

  def show
    input_id = params[:id]
    recipe = Recipe.find_by(id: input_id)
    render json: recipe.as_json
  end

end
