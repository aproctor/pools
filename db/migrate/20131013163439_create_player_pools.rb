class CreatePlayerPools < ActiveRecord::Migration
  def change
    create_table :players_pools do |t|
      t.integer :player_id
      t.integer :pool_id
    end
  end
end
