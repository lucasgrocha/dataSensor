class DailySensorUpdateJob
  include Sidekiq::Worker

  def perform
    return if User.all.empty?

    data = HTTParty.get ENV["DATASENSORURL"]
    User.all.each do |user|
      SensorInfo.create(data: data, manual: false, user: nil || user)
    end
  end
end
