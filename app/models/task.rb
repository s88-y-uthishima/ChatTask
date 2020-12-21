class Task < ApplicationRecord
  belongs_to :room
  validates :title, length: { in: 1..255 }
end
