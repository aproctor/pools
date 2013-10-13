json.array!(@teams) do |team|
  json.extract! team, :reference, :location, :league_id
  json.url team_url(team, format: :json)
end
