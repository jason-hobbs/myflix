FactoryGirl.define do
  factory :user do
    id {Faker::Number.number(3)}
    email {Faker::Internet.email}
    full_name {Faker::Name.name[4..20]}
    password "password"
    password_confirmation "password"
  end
end
