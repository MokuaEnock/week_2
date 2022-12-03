class HeroPowersController < ApplicationController
  def create
    hp = HeroPower.create!(create_params)
    render json: hp, status: :created
  rescue ActiveRecord::RecordInvalid => invalid
    render json: {
             errors: invalid.record.errors
           },
           status: :unprocessable_entity
  end

  private

  def create_params
    params.permit(:strength, :hero_id, :power_id)
  end
end
