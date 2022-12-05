class HeroPowersController < ApplicationController

  
  def create
    hp = HeroPower.create!(create_params)
    render json: hp, status: :created
  end

  private

  def create_params
    params.permit(:strength, :hero_id, :power_id)
  end
end
