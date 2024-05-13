FactoryBot.define do
  factory :event do
    title { Faker::Lorem.sentence }
    start { Faker::Time.between(from: DateTime.now, to: DateTime.now + 7) }
    content { Faker::Lorem.paragraph }
  end
end