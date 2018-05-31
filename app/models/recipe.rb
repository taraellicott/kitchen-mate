require "json"
require "rest_client"

class Recipe < ApplicationRecord
  has_many :saved_recipes
  has_many :recipe_ingredients
  has_many :users, through: :saved_recipes
  has_many :ingredients, through: :recipe_ingredients


  def self.get_recipes(search)
    api_url = "http://api.yummly.com/v1/api/recipes?_app_id=1586f472&_app_key=4471a886e64d94e9cc2ad6ece663c593"
    search.each do |ingredient|
      api_url << "&allowedIngredient[]=#{ingredient}"
    end
    response = RestClient.get(api_url)
    results_hash = JSON.parse(response)
    recipe_title = results_hash["matches"][0]["recipeName"]
    recipe_id = results_hash["matches"][0]["id"]
    recipe_url = "http://www.yummly.co/recipe/#{recipe_id}"
    recipe_category =  results_hash["matches"][0]["attributes"]["course"][0]
    recipe = Recipe.new(title:recipe_title, category: recipe_category, directions: recipe_url)

  end



end
