class PlayersPool < ActiveRecord::Base
  belongs_to :player
  belongs_to :pool
end
