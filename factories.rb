FactoryBot.define do
  factory :user do
    name     { FFaker::Name.name }
    email    { FFaker::Internet.free_email }
    password { 123456 }
  end

  factory :sensor_info do
    data      { { light_sensor: rand(0..100), sound_sensor: rand(0..1) } }
    run_date  { DateTime.now }
    manual    { [true, false].sample }
    user_id   { nil }
    latitude  { FFaker::Geolocation.lat }
    longitude { FFaker::Geolocation.lng }
  end
end
