class RecipesController < ApplicationController

  def index
    @recipes = Recipe.all
    # if !logged_in?
    #   redirect_to login_path
  end

  def show
    @recipe = Recipe.find(params[:id])
  end



  # private
  # def form_search
  #   Recipe.get_recipes(params["ingredients"])
  # end


end
