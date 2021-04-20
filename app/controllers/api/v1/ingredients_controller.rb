class Api::V1::IngredientsController < ApplicationController
  def index
    ingredients = Ingredient.all
    render json: ingredients
  end
  def show
    ingredient = Ingredient.find_by(id: params[:id])
    if ingredient
      render json: ingredient, except: [:created_at, :updated_at]
    else
      render json: {message: 'ingredient not found'}
    end
  end
end
