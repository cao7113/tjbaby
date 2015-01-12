FactoryGirl.define do
  factory :comment do
    content { Faker::Lorem.sentence(10)}
    user
  end
end
