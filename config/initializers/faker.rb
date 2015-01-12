Faker::Config.locale = :en #中文支持有问题

# Demo Fg.fake :user
module Fg #FakeGirl
  extend self

  # FakeGirl.fake :user
  def seed(model_name, opts = {})
    opts = {num: 1, strategy: :create}.merge opts
    #todo check factory?
    1.upto(opts[:num]) do |i|
      FactoryGirl.send(opts[:strategy], model_name, opts[:attrs]||{})
    end
  end

  alias_method :fake, :seed
end
