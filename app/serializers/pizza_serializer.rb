class PizzaSerializer < ActiveModel::Serializer
  attributes :id, :name, :ingedients
  has_many :restraunt_pizzas
  has_many :restraunts, through: :restraunt_pizzas
end
