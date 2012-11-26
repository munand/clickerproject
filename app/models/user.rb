class User < ActiveRecord::Base
  attr_accessible :name, :password, :password_confirmation
  validates :name, presence: true, uniqueness: true
  
  has_many :responses, dependent: :destroy
  has_secure_password
end
