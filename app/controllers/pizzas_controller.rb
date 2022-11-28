class PizzasController < ApplicationController
  def index
    pizza=Pizza.all
    render json:pizza
  end

  def show
    pizza= Pizza.find_by(id: params[:id])
    if pizza
      render json: pizza
    else
      render json: { error: "Pizza not found" }, status: :not_found
    end
  end
  
end
