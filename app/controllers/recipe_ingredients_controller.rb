class RecipeIngredientsController < ApplicationController

  def show
    @recipe_ingredient = RecipeIngredients.find(params[:id])
  end
end
