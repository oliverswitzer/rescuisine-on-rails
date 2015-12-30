require 'rails_helper'

describe RestaurantsController do
  describe "GET index", type: :controller do
    it "assigns @restaurants" do
      restaurants = create(:restaurant)
      get(:index)
      expect(assigns(:restaurants)).to eq([restaurants])
    end
  end
end