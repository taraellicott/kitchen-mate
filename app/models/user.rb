class User < ApplicationRecord
  has_secure_password
  has_many :saved_recipes
  has_many :recipes, though: :saved_recipes
end
