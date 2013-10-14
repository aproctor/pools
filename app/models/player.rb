class Player < ActiveRecord::Base
  has_many :players_pools, :dependent => :destroy
  has_many :pools, through: :players_pools
end
