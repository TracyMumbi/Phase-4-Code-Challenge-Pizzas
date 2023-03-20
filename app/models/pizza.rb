class Pizza < ApplicationRecord
    has_many :restraunt_pizzas
    has_many :restraunts, through: :restraunt_pizzas
end
