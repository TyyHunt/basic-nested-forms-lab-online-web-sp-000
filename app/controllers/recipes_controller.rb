class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new(recipe_params)
  end

  def create
  end

  private

  def recipe_params
    params.require(:recipe).permit(
    :name,
    ingredients_attributes: [
      :name,
      :quanitity
    ]
    )
end
