json.array!(@picks) do |pick|
  json.extract! pick, :player_id, :match_id, :pool_id, :winner
  json.url pick_url(pick, format: :json)
end
