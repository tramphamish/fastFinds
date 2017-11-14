class User < ApplicationRecord
  has_secure_password
  has_many :posts

  validates :first_name, :last_name, :email, :zip_code, presence: true
  validates :email, uniqueness: true
  validates :email, uniqueness: { case_sensitive: false }
  validates :first_name, :last_name, length: { minimum: 2 }
  validates :zip_code, length: { is: 5 }
  validates :password, length: { in: 4..20 }
end
