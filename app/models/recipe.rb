class Recipe < ApplicationRecord
  has_many :saved_recipes
  has_many :recipe_ingredients
  has_many :users, through: :saved_recipes
  has_many :ingredients, through: :recipe_ingredients
end
