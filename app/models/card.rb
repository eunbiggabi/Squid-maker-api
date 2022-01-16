class Card < ApplicationRecord

  has_one_attached :picture
  belongs_to :theme
  belongs_to :user
  validates :name, presence: true, 
                        length: { minimum: 2 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, 
                      uniqueness: { case_sensitive: false }, 
                      length: { maximum: 105 },
                      format: { with: VALID_EMAIL_REGEX }

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
