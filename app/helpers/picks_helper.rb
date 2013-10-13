module PicksHelper

  def pick_link(pick, team, is_home)
    buffer = []
    selected = false
    if(is_home == true)
      team = team.reference
      pickVal = 0
    else
      team = team.reference
      pickVal = 1
    end
    selected = (pick.winner == pickVal)

    buffer << '<div onclick="setPick(this, '
    buffer << pick.id
    buffer << ', '
    buffer << pickVal
    buffer << ')"'
    buffer << ' class="pick_link '
    if(is_home)
      buffer << 'home'
    else
      buffer << 'away'
    end
    if(selected)
      buffer << ' selected'
    end
    buffer << '">'
    buffer << team
    buffer << '</div>'

    return raw buffer.join('')
  end
end
