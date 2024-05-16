require 'rails_helper'
describe EventsController, type: :request do

  before do
    @event = FactoryBot.create(:event)
  end

  describe 'GET #index' do
    it 'indexアクションにリクエストすると正常にレスポンスが返ってくる' do
      get root_path
      expect(response.status).to eq 401
    end
  end

  describe 'GET #show' do
    it 'showアクションにリクエストすると正常にレスポンスが返ってくる' do
      get root_path(@event)
      expect(response.status).to eq 401
    end
  end
end