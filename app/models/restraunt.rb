class Restraunt < ApplicationRecord
    has_many :restraunt_pizzas, dependent: :destroy
    has_many :pizzas, through: :restraunt_pizzas
end
