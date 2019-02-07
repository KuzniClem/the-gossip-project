require 'rails_helper'

RSpec.describe WelcomePagesController, type: :controller do

  describe "GET #sho" do
    it "returns http success" do
      get :sho
      expect(response).to have_http_status(:success)
    end
  end

end
