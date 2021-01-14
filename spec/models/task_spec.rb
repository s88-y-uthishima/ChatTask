require 'rails_helper'
RSpec.describe Task, type: :model do
  before do
    @task = FactoryBot.build(:task)
  end

  describe '新規タスク作成' do
    it 'タスク名があれば作成できる' do
      expect(@task).to be_valid
    end
    it 'タスク名が空だと作成できない' do
      @task = Task.new(title: '')
      @task.valid?
      expect(@task.errors.full_messages).to include("タスク名を入力してください")
    end
  end
end