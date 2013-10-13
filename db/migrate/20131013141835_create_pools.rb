class CreatePools < ActiveRecord::Migration
  def change
    create_table :pools do |t|
      t.string :name
      t.timestamp :start_time
      t.timestamp :end_time
      t.references :league, index: true

      t.timestamps
    end
  end
end
