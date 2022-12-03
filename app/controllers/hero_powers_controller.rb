class HeroPowersController < ApplicationController
  def create
  end

  private

  def create_params
    params.permit(:strength, :hero_id, :power_id)
  end
end
