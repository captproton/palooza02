require 'rails_helper'

RSpec.describe "Palooza02::Paloozas", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/palooza02/paloozas/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/palooza02/paloozas/show"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /new" do
    it "returns http success" do
      get "/palooza02/paloozas/new"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /create" do
    it "returns http success" do
      get "/palooza02/paloozas/create"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /edit" do
    it "returns http success" do
      get "/palooza02/paloozas/edit"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /update" do
    it "returns http success" do
      get "/palooza02/paloozas/update"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /destroy" do
    it "returns http success" do
      get "/palooza02/paloozas/destroy"
      expect(response).to have_http_status(:success)
    end
  end

end
