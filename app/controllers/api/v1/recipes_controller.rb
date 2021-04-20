class Api::V1::RecipesController < ApplicationController
  def index
    recipes = Recipe.all
    render json: recipes, except: [:created_at, :updated_at]
  end

  def show
    recipe = Recipe.find_by(id: params[:id])
    if recipe
      render json: recipe, except: [:created_at, :updated_at]
    else
      render json: {message: 'Recipe not found'}
    end
  end
end
