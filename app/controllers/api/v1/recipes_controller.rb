class Api::V1::RecipesController < ApplicationController

  def index
    recipes = Recipe.order(created_at: :desc)
    render json: { status: 'SUCCESS', message: 'loaded recipes', data: recipes }
  end

  def show
    recipe = Recipe.find(params[:id])
    render json: { status: 'SUCCESS', message: 'loaded the recipe', data: recipe }
  end

  def create
    recipe = Recipe.new(recipe_params)
    if recipe.save
      render json: { status: 'SUCCESS', message: 'loaded the recipe', data: recipe }
    else
      render json: { status: 'ERROR', message: 'recipe not saved', data: recipe.errors }
    end
  end

  def destroy
    recipe = Recipe.find(params[:id])
    recipe.destroy
    render json: { status: 'SUCCESS', message: 'deleted the recipe', data: recipe }
  end

  def update
    recipe = Recipe.find(params[:id])
    if recipe.update(recipe_params)
      render json: { status: 'SUCCESS', message: 'updated the recipe', data: recipe }
    else
      render json: { status: 'SUCCESS', message: 'loaded the recipe', data: recipe }
    end
  end

  private

      def recipe_params
        params.require(:recipe).permit(:name, :procedure)
      end
end
