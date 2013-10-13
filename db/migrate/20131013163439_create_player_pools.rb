class CreatePlayerPools < ActiveRecord::Migration
  def change
    create_table :players_pools do |t|
      t.integer :player_id, :null => false
      t.integer :pool_id, :null => false
    end
  end
end
