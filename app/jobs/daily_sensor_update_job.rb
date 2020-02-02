class DailySensorUpdateJob
  include Sidekiq::Worker

  def perform
    data = HTTParty.get ENV["DATASENSORURL"]
    SensorInfo.create(data: data, run_date: DateTime.now.utc, manual: false, user_id: nil)
  end
end
