class Comment < ActiveRecord::Base
  attr_accessible :content, :user_id, :user
  belongs_to :user, counter_cache: true
end
