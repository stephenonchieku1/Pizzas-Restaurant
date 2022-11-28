class RestaurantPizzasController < ApplicationController
  def index
    restaurantpizza=RestaurantPizza.all
    render json: restaurantpizza
  end

  def create
    restaurantpizza = RestaurantPizza.create(rest_params)
    render json: restaurantpizza, status: :created

  end

  def update
    restaurantpizza  = RestaurantPizza.find_by(id: params[:id])
      if restaurantpizza 
        restaurantpizza.update(rest_params)
        render json: restaurantpizza 
      else
        render json: { error: "restaurantpizza  not found" }, status: :not_found
      end
  end

  private
  def rest_params
    params.permit(:price, :pizza_id, :restaurant_id)
  end
end
