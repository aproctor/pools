json.array!(@matches) do |match|
  json.extract! match, :start_time, :end_time, :home_team_id, :away_team_id, :spread, :home_score, :away_score, :league_id
  json.url match_url(match, format: :json)
end
