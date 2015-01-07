class User < ActiveRecord::Base
  attr_accessible :birthday, :email, :name

  has_many :comments
end
