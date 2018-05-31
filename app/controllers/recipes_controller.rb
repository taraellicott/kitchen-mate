class RecipesController < ApplicationController

  def index
    @recipes = Recipe.all
  end

  def show
    @recipe = Recipe.find(params[:id])
  end



  # private
  # def form_search
  #   Recipe.get_recipes(params["ingredients"])
  # end


end
