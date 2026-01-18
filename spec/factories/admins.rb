FactoryBot.define do
  factory :admin do
    sequence(:email) { |n| "admin#{n}@hackclub.com" }
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    super_admin { false }

    trait :super_admin do
      super_admin { true }
    end

    trait :with_omniauth do
      provider { "hack_club" }
      sequence(:uid) { |n| "ident!admin#{n}" }
    end
  end
end
