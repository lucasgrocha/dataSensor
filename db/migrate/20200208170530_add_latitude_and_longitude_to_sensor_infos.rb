class AddLatitudeAndLongitudeToSensorInfos < ActiveRecord::Migration[5.2]
  def up
    add_column :sensor_infos, :latitude, :string
    add_column :sensor_infos, :longitude, :string
  end

  def down
    remove_column :sensor_infos, :latitude, :string
    remove_column :sensor_infos, :longitude, :string
  end
end
