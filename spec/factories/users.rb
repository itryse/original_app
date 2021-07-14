FactoryBot.define do
  factory :user do
    nickname                {Faker::Name.initials(number: 2)}
    email                   {Faker::Internet.email}
    password                {'1a' + Faker::Internet.password(min_length: 6)}
    password_confirmation   {password}
    gender_id               { 2 }
    age_id                  { 12 }
    profile            {'よろしくお願いします。'}
  end
end