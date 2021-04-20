class Recipe < ApplicationRecord
    belongs_to :cuisine
    belongs_to :ingredient

    has_many :reviews
    has_many :users, through: :reviews
end
