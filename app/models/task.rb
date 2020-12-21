class Task < ApplicationRecord
  belongs_to :room
  has_many :cards, dependent: :destroy

  validates :title, length: { in: 1..255 }
end
