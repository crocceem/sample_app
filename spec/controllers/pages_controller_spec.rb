require 'rails_helper'
require 'spec_helper'

RSpec.describe PagesController, type: :controller do
  render_views

  before(:each) do
    @base_title = "Simple App du Tutoriel Ruby on Rails"
  end

  describe "GET #home" do
    it "returns http success" do
      get :home
      expect(response).to have_http_status(:success)
    end

    it "devrait avoir le bon titre" do
      get :home
      response.expect have_selector("title",
                                        :content => @base_title +" | Accueil", visible:false)
    end
  end

  describe "GET #contact" do
    it "returns http success" do
      get :contact
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #about" do
    it "returns http success" do
      get :about
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #help" do
    it "returns http success" do
      get :help
      expect(response).to have_http_status(:success)
    end
  end
 end


