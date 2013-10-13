class League < ActiveRecord::Base
  belongs_to :sport

  def long_name
    return "#{self.name} - #{self.sport.name}"
  end
end
