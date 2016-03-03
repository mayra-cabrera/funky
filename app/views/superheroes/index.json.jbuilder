json.array!(@superheros) do |superhero|
  json.extract! superhero, :id
  json.extract! superhero, :name
  json.extract! superhero, :power
  json.url superhero_url(superhero, format: :json)
end
