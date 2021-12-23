require 'rails_helper'

RSpec.describe 'Splash', type: :request do
  describe 'GET #splash' do
    before(:each) { get '/' }

    it 'is a success' do
      expect(response).to have_http_status(:ok)
    end

    it "renders 'index' template" do
      expect(response).to render_template(:index)
    end

    it 'body includes correct placeholder text' do
      expect(response.body).to include('<h1>Mèxico Transfer</h1>')
    end
  end
end
