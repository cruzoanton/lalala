FactoryBot.define do
  factory :bus do
    company

    route_number { "263e" }
    license_plate { "AX 2534 BM" }
    brand { "Brand" }
    token { "463264" }
    people_capacity { 50 }
  end
end
