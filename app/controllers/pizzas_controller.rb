class PizzasController < ApplicationController

    def index
      pizzas = Pizza.all
      render json: pizzas, include: [restraunts:{except: [:created_at,:updated_at]}]
    end
    def show
        pizza = find_pizzas
        render json: pizza, include: :restraunts
    end

private
def find_pizzas
    pizza = Pizza.find(params[:id])
end
    
end
