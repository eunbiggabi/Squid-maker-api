class Card < ApplicationRecord

  has_one_attached :picture
  belongs_to :theme
  belongs_to :user
end
