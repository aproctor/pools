class Team < ActiveRecord::Base
  belongs_to :league

  def long_name
    return "#{self.location} #{self.reference}"
  end
end
