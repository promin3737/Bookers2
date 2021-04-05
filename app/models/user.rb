class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # validates :email, uniqueness: true
  # validates :name, uniqueness: true

  # def email_required?
  #   false
  # end

  # def email_changed?
  #   false
  # end
  validates :name, presence: true, length: { minimum: 2, maximum: 20}
  validates :introduction, length: { maximum: 50 }
  validates :name, uniqueness: true

  has_many :books, dependent: :destroy
  attachment :profile_image

end
