class Pool < ActiveRecord::Base
  belongs_to :league
  has_many :players_pools, :dependent => :destroy
  has_many :players, through: :players_pools

  def matches
    return Match.in_range(self.start_time, self.end_time)
  end
end
