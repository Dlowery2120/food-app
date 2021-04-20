class Ingredient < ApplicationRecord
    has_many :recipes
    has_many :cuisines, through: :recipes
end
