class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :name, :procedure

  has_many :ingredients
end
