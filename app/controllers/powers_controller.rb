class PowersController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

  def index
    powers = Power.all
    render json: powers
  end

  def show
    power = Power.find(params[:id])
    render json: power
  end

  def update
    power = Power.find(params[:id])
    power.update!(post_params)
    render json: power
  rescue ActiveRecord::RecordInvalid => invalid
    render json: {
             errors: invalid.record.errors
           },
           status: :unprocessable_entity
  end

  private

  def render_not_found_response
    render json: { error: "Power not found" }, status: :not_found
  end

  def post_params
    params.permit(:description)
  end
end
