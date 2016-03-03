json.array!(@beers) do |beer|
  json.extract! beer, :id
  json.extract! beer, :name
  json.extract! beer, :alcohol
  json.url beer_url(beer, format: :json)
end
