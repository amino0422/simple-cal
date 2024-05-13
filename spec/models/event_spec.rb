require 'rails_helper'

RSpec.describe Event, type: :model do
  before do
    @user = FactoryBot.create(:user)
    @event = FactoryBot.build(:event, user: @user)
  end

  describe '予定・タスクの保存' do
    context '予定・タスクが保存できる場合' do
      it '予定・タスクと開始時間さえあれば保存できる' do
        expect(@event).to be_valid
      end
    end

    context '予定・タスクが保存できない場合' do
      it 'タイトルが空では保存できない' do
        @event.title = ''
        @event.valid?
        expect(@event.errors.full_messages).to include("Title can't be blank")
      end
      it 'ユーザーが紐付いていなければ投稿できない' do
        @event.user = nil
        @event.valid?
        expect(@event.errors.full_messages).to include("User must exist")
      end
    end
  end
end