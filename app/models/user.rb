class User < ActiveRecord::Base
  attr_accessible :birthday, :email, :name
  has_many :comments, dependent: :destroy
end
