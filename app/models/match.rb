class Match < ActiveRecord::Base
  belongs_to :league
  belongs_to :home_team, :class_name => "Team"
  belongs_to :away_team, :class_name => "Team"

  scope :in_range, ( lambda do |start_dt, end_dt|
    where( :created_at => (start_dt)..(end_dt) )
  end )

  def long_name()
    return "#{away_team.long_name} @ #{home_team.long_name}"
  end
end
