class User < ActiveRecord::Base
  USER_TYPES = [ 'student', 'teacher' ]
  attr_accessible :name, :password, :password_confirmation, :user_type
  validates :name, presence: true, uniqueness: true
  validates :user_type, inclusion: USER_TYPES
  validates :password, presence: true
  
  has_many :responses, dependent: :destroy
  has_secure_password
end
