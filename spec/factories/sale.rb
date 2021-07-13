FactoryBot.define do
  factory :sale do
    buyer { FFaker::Name.name }
    description { FFaker::Lorem.word }
    unit_price { FFaker::Random.rand(1..99) }
    quantity { FFaker::Random.rand(1..99) }
    address { FFaker::Address.street_name }
    provider { FFaker::Company.name }
  end
end