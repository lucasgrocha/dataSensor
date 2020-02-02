class DataController < MainController
  def index
    @datas = SensorInfo.all
  end
end
