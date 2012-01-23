class User < ActiveRecord::Base
  has_secure_password
  validates_presence_of :password, :on => :create
  validates :nickname, :presence => true, :uniqueness => true, :nickname => true
  validates :email, :presence => true, :uniqueness => true, :email => true
end