class RestrauntSerializer < ActiveModel::Serializer
  attributes :id, :name, :address
  has_many :restraunt_pizzas
  has_many :pizzas, through: :restraunt_pizzas
end
