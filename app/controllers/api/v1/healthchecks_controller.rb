class Api::V1::HealthchecksController < ApplicationController
  def index
    render json: { result: 'ok' }
  end
end
