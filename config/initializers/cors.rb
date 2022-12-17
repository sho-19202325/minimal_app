# frozen_string_literal: true

Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins 'localhost:3000' if Rails.env.development?

    resource '/api/v1/*',
             headers: :any,
             methods: %i[get post patch put delete]
  end
end
