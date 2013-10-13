json.array!(@leagues) do |league|
  json.extract! league, :name, :sport_id
  json.url league_url(league, format: :json)
end
