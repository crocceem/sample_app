require 'rails_helper'

RSpec.describe "LayoutLinks", type: :request do
  describe "layout_links" do
    it "devrait trouver une page d'accueil à '/' "do
      get '/'
      response.expect have_selector('title',:content =>"Accueil")
    end

    it "devrait trouver une page Contact at '/contact'" do
      get '/contact'
      response.expect have_selector('title',:content =>"Contact")
    end

    it "devrait avoir une page A Propos at '/about'" do
      get '/about'
      response.expect have_selector('title',:content =>"A Propos")
    end

    it "devrait trouver une page Help at '/help' " do
      get '/help'
      response.expect have_selector('title',:content => "Aide")
    end
  end
end

