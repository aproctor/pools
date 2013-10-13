json.array!(@teams) do |team|
  json.extract! team, :reference, :location, :sport_id
  json.url team_url(team, format: :json)
end
