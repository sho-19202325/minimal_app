# frozen_string_literal: true

module Api
  module V1
    class HealthchecksController < ApplicationController
      def index
        render json: { result: 'ok' }
      end
    end
  end
end
