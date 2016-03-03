json.array!(@starwars) do |starwar|
  json.extract! starwar, :id
  json.extract! starwar, :character
  json.extract! starwar, :quote
  json.extract! starwar, :planet
  json.url starwar_url(starwar, format: :json)
end
