require 'rails_helper'

RSpec.describe UsersController, type: :controller do
render_views
  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end

    it "devrait avoir le titre adéquat" do
      get :new
      expect(response).to have_selector("title",:content =>"Inscription")
    end
  end

end
