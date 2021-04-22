class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :name, :image_url, :instructions
  has_many :reviews
  has_many :users, through: :reviews
end
