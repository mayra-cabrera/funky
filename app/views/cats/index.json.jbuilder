json.array!(@cats) do |cat|
  json.extract! cat, :id
  json.extract! cat, :name
  json.extract! cat, :age
  json.url cat_url(cat, format: :json)
end
