class RolifyCreatePremia < ActiveRecord::Migration[5.2]
  def change
    create_table(:premia) do |t|
      t.string :name
      t.references :resource, :polymorphic => true

      t.timestamps
    end

    create_table(:users_premia, :id => false) do |t|
      t.references :user
      t.references :premium
    end
    
    add_index(:premia, [ :name, :resource_type, :resource_id ])
    add_index(:users_premia, [ :user_id, :premium_id ])
  end
end
