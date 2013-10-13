module TeamsHelper
  def team_long_name(team)
    return "#{team.location} #{team.reference}"
  end

  def team_icon_img(team)
    return "teams/#{team.league.name}/#{team.reference}.png"
  end
end
