class Card < ApplicationRecord

  has_one_attached :picture
  belongs_to :theme
end
