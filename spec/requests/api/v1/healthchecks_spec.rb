require 'rails_helper'

RSpec.describe "Api::V1::Healthchecks", type: :request do
  describe "GET /api/v1/healthcheck" do
    subject(:send_request) { get "/api/v1/healthchecks" }

    it "returns http success" do
      expect(send_request).to eq 200
      expect(JSON.parse(response.body, symbolize_names: true)).to match({ result: 'ok' })
    end
  end
end