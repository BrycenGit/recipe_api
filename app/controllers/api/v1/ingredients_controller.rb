class Api::V1::IngredientsController < ApplicationController

  def index
    if params[:recipe_id]
      recipe = Recipe.find(params[:recipe_id])
      ingredients = recipe.ingredients
    else
      ingredients = Ingredient.order(created_at: :desc)
    end
    render json: ingredients
  end

  def show
    recipe = Recipe.find(params[:recipe_id])
    ingredient = Ingredient.find(params[:id])
    render json: { status: 'SUCCESS', message: 'loaded the ingredient', data: ingredient }
  end

  def create
    recipe = Recipe.find(params[:recipe_id])
    ingredient = recipe.ingredients.create!(ingredient_params)
    # if ingredient.save
      render json: { status: 'SUCCESS', message: 'loaded the ingredient', data: ingredient }
    # else
      # render json: { status: 'ERROR', message: 'ingredient not saved', data: ingredient.errors }
    # end
  end

  def destroy
    ingredient = Ingredient.find(params[:id])
    ingredient.destroy
    render json: { status: 'SUCCESS', message: 'deleted the ingredient', data: ingredient }
  end

  def update
    ingredient = Ingredient.find(params[:id])
    if ingredient.update(ingredient_params)
      render json: { status: 'SUCCESS', message: 'updated the ingredient', data: ingredient }
    else
      render json: { status: 'SUCCESS', message: 'loaded the ingredient', data: ingredient }
    end
  end

  private

      def ingredient_params
        params.permit(:name)
      end

end
