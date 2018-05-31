class RecipesController < ApplicationController

  def index
    @recipes = Recipe.all
    # if !logged_in?
    #   redirect_to login_path
  end
end
