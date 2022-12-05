class HerosController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
  rescue_from ActiveRecord::RecordInvalid,
              with: :render_unprocessable_entity_response
  def index
    heros = Hero.all
    render json: heros
  end

  def show
    hero = Hero.find(params[:id])
    render json: hero
  end

  private

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
