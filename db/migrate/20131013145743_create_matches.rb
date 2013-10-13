class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.timestamp :start_time
      t.timestamp :end_time
      t.integer :home_team_id
      t.integer :away_team_id
      t.float :spread
      t.integer :home_score
      t.integer :away_score
      t.references :league, index: true

      t.timestamps
    end
  end
end
