class Pool < ActiveRecord::Base
  belongs_to :league
  has_and_belongs_to_many :players

  def matches
    return Match.in_range(self.start_time, self.end_time)
  end
end
