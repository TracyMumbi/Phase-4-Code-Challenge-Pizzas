class RestrauntsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :record_error
    def index
        restraunt = Restraunt.all
        render json: restraunt
    end
    def show
        restraunt = find_restraunt
        render json: restraunt, include:[pizzas:{except: [:created_at,:updated_at]}]
    end
    def destroy
        restraunt = find_restraunt
        restraunt.destroy
    end
    private
    def find_restraunt
        Restraunt.find(params[:id])
    end
    def record_error
        render json: {error: "Restaurant not found"}
      end
end
