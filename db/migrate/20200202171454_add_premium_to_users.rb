class AddPremiumToUsers < ActiveRecord::Migration[5.2]
  def up
    add_column :users, :premium, :boolean
  end

  def down
    remove_column :users, :premium, :boolean
  end
end
