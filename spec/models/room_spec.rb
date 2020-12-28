require 'rails_helper'
RSpec.describe Room, type: :model do
  describe '新規ルーム作成' do
    it '店舗名があれば作成できる' do
      room = Room.new(name: '○○店')
      expect(room).to be_valid
    end
    it '店舗名が空だと作成できない' do
      room = Room.new(name: '')
      room.valid?
      expect(room.errors.full_messages).to include("店舗名を入力してください")
    end
  end
end
