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
    search_term = params[:search]

    if search_term
      recipes = recipes.where("title iLIKE ? OR ingredients iLIKE ?",
                              "%#{search_term}%",
                              "%#{search_term}%")
    end
    render json: recipes.as_json

  end












  def create
    recipe = Recipe.new(
                        title: params[:title],
                        chef: params[:chef],
                        ingredients: params[:ingredients],
                        directions: params[:directions]
                        )
    recipe.save
    render json: recipe.as_json

  end




  def show
    recipe = Recipe.find(params[:id])
    render json: recipe.as_json


  end




  def update     #this is very similar to create
    recipe = Recipe.find(params[:id])

    recipe.title = params[:title]
    recipe.chef = params[:chef]
    recipe.ingredients = params[:ingredients]
    recipe.directions = params[:directions]
    recipe.save

    render json: recipe.as_json
  end

  def destroy
    recipe = Recipe.find(params[:id])
    recipe.destroy
    render json: {message: "Succesfully destroyed Recipe ##{recipe.id}"}
    
  end

end




















