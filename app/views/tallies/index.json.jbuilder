json.array!(@tallies) do |tally|
  json.extract! tally, :amount, :user_id
  json.url tally_url(tally, format: :json)
end