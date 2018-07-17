class IngredientsController < ApplicationController

  # before_action :set_ingredient, only: [:create]

  def index
    @ingredients = Ingredient.all
  end

  def new
    @ingredient = Ingredient.new
  end

  def create
    # byebug
    # @ingredient1 = Ingredient.find_or_create_by(name: params["ingredients"])
    # @ingredient2 = Ingredient.find_or_create_by(name: params["ingredients"])
    # @ingredient3 = Ingredient.find_or_create_by(name: params["ingredients"])
    # if @ingredient1.save && @ingredient2.save && @ingredient3.save
    @recipe = Recipe.get_recipes(params["ingredients"])
    if @recipe == nil
      render 'error'
    else
      if @recipe.save
        redirect_to recipe_path(@recipe)
      else
        render 'new'
      end
    end
  end
end
