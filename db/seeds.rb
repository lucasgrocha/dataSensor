users = []

25.times do
  users << FactoryBot.create(:user)
end

150.times do
  FactoryBot.create(:sensor_info, user: users.sample)
end
