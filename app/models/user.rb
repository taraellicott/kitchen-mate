class User < ApplicationRecord
  has_secure_password
    # method that creates methods
    # authenticate
    # password
    # password=
    #   hashes and salts the password
    #   saves it in the password digest column
    # password_confirmation
    # password_confirmation=
  has_many :saved_recipes
  has_many :recipes, through: :saved_recipes

  validates :username, uniqueness: true
  validates :password, length: {minimum: 5}

end
