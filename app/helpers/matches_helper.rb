module MatchesHelper

  def match_name(home, away)
    return "#{away.long_name} @ #{home.long_name}"
  end
end
