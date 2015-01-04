class User < ActiveRecord::Base
  attr_accessible :birthday, :email, :name
end
