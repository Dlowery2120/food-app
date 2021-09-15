class CuisineSerializer < ActiveModel::Serializer
  attributes :id, :cuisine_type
  has_many :recipes
  has_many :ingredients, through: :recipes
end
