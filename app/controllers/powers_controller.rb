class PowersController < ApplicationController
  def index
    powers = Power.all
    render json: powers
  end

  def show
    power = Power.find(params[:id])
    render json: power
  end
end
