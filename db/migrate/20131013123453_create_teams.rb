class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :reference
      t.string :location
      t.references :league, index: true, :null => false

      t.timestamps
    end
  end
end
