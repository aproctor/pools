class CreatePicks < ActiveRecord::Migration
  def change
    create_table :picks do |t|
      t.references :player, index: true
      t.references :match, index: true
      t.references :pool, index: true
      t.integer :winner

      t.timestamps
    end
  end
end
