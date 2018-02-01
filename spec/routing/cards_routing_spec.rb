require "rails_helper"

RSpec.describe CardsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/cards").to route_to("cards#index")
    end

    it "routes to #show" do
      expect(:get => "/cards/3").to route_to("cards#show", :id => "3")
    end
  end
end
