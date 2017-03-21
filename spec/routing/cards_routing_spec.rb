require "rails_helper"

RSpec.describe CardsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/cards").to route_to("cards#index")
    end
  end
end
