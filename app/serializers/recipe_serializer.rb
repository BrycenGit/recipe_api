class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :name, :procedure

  has_many :ingredients

  # has_many :measurements, through: :ingredients
end
