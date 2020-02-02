class DataController < MainController
  def index
    @datas = SensorInfo.where(user: current_user)
  end
end
