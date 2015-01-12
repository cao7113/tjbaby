FactoryGirl.define do
  factory :user do
    name { Faker::Name.name}
    email { Faker::Internet.email}
    birthday {Faker::Date.between("1982-1-1", "2000-1-1")}
  end
end
