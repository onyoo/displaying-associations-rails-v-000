require 'rails_helper'

RSpec.describe CategoriesController, type: :controller do

  before do
    @category = Category.create!(name: "The Dangers of Stairs")
  end

  describe "GET #show" do
    it "returns http success" do
      get :show, id: @category
      expect(response).to have_http_status(:success)
    end
  end

end
