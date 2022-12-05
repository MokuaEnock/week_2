class HeroPowersController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
  rescue_from ActiveRecord::RecordInvalid,
              with: :render_unprocessable_entity_response

  def create
    hp = HeroPower.create!(create_params)
    render json: hp, status: :created
  end

  private

  def create_params
    params.permit(:strength, :hero_id, :power_id)
  end

  def render_not_found_response
    render json: { error: "Restaurant not found" }, status: :not_found
  end

  def render_unprocessable_entity_response(invalid)
    render json: {
             error: invalid.record.errors.full_messages
           },
           status: :unprocessable_entity
  end
end
