json.array!(@pools) do |pool|
  json.extract! pool, :name, :start_time, :end_time, :league_id
  json.url pool_url(pool, format: :json)
end
