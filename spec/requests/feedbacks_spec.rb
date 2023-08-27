require 'rails_helper'

RSpec.describe "Feedbacks", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/feedbacks/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /create" do
    it "returns http success" do
      get "/feedbacks/create"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/feedbacks/show"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /new" do
    it "returns http success" do
      get "/feedbacks/new"
      expect(response).to have_http_status(:success)
    end
  end

end
