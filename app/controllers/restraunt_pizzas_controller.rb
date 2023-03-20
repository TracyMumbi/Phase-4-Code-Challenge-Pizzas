class RestrauntPizzasController < ApplicationController

    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity

    def index
        restraunt_pizza = RestrauntPizza.all
        render json: restraunt_pizza
    end
    def create
        restraunt_pizza = RestrauntPizza.create(create_restraunt_pizza)
        render json: restraunt_pizza.pizza, status: :created
    end
    private
    def create_restraunt_pizza
        params.permit(:price, :pizza_id, :restraunt_id)
    end
    def render_unprocessable_entity(invalid)
        render json: { errors: invalid.record.errors }, status: :unprocessable_entity
    end
end
