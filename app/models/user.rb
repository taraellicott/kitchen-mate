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
<<<<<<< HEAD
=======
  validates :username, uniqueness: true
  validates :password, length: {minimum: 5}
>>>>>>> f793a476eb4d790d3e3e524b2e0aef6fd2a8c7d8
end
