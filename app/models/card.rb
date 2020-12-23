class Card < ApplicationRecord
  belongs_to :task

  validates :title, presence: true, length: { in: 1..255 }
  validates :address, presence: true, length: { in: 1..255 }
  validates :memo, length: { maximum: 1000 }
end
