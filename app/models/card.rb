class Card < ApplicationRecord

  has_one_attached :picture
  belongs_to :theme
  belongs_to :user

  def self.find_by_user(uname)
    user = User.find_by(username:uname)
    return self.where(user:user)
  end

  def transform_message
    return {
      id:self.id,
      name:self.name,
      company:self.company,
      title:self.title,
      email:self.email,
      message:self.message,
      theme:self.theme.name,
      posted_at:self.updated_at,
      username:self.user.username
    }
  end
end
