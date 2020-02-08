class RemoveRunDateFromSensorInfos < ActiveRecord::Migration[5.2]
  def change
    remove_column :sensor_infos, :run_date
  end
end
