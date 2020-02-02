50.times do
  FactoryBot.create(:sensor_info, user: FactoryBot.create(:user))
end