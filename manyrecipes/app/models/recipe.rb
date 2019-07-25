class Recipe < ApplicationRecord
    has_one :user
    has_many :recipe_ingredients
    has_many :ingredients, through: :recipe_ingredients
end
