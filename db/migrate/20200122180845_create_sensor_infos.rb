class CreateSensorInfos < ActiveRecord::Migration[5.2]
  def change
    create_table :sensor_infos do |t|
      t.jsonb :data
      t.datetime :run_date
      t.boolean :manual

      t.timestamps
    end
  end
end
