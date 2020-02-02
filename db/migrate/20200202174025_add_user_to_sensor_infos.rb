class AddUserToSensorInfos < ActiveRecord::Migration[5.2]
  def up
    add_column :sensor_infos, :user_id, :integer
    add_foreign_key :sensor_infos, :users
  end

  def down
    remove_column :sensor_infos, :user_id, :integer
    remove_foreign_key :sensor_infos, :users
  end
end
