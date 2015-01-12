Faker::Config.locale = :en #中文支持有问题

#Demo: FakerWithFactoryGirl.fake :user
module FakerWithFactoryGirl
  extend self
  def fake(model_name, opts = {})
    opts = {num: 1, strategy: :create}.merge opts
    1.upto(opts[:num]) do |i|
      FactoryGirl.send(opts[:strategy], model_name, opts[:attrs]||{})
    end
  end
end

#for User model: User.fake
ActiveSupport.on_load :active_record do
  def self.fake(opts={})
    FakerWithFactoryGirl.fake(self.name.underscore, opts)
  end
end
