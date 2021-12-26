class Theme < ApplicationRecord
  has_many :cards

  # before_create :slugify

  # def slugify
  #   self.slug = name.parameterize
  # end
end
