module TeamsHelper
  def team_long_name(team)
    return "" if team.nil?

    return team.long_name
  end

  def team_icon_img(team)
    return "" if team.nil?

    return "teams/#{team.league.name}/#{team.reference}.png"
  end
end
