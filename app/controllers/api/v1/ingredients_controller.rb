class Api::V1::IngredientsController < ApplicationController

  def index
    if params[:recipe_id]
      recipe = Recipe.find(params[:recipe_id])
      ingredients = recipe.ingredients
    # else
    #   ingredients = Ingredient.order(created_at: :desc)
    end
    render json: { status: 'SUCCESS', message: 'loaded ingredients', data: ingredients }
  end

end
