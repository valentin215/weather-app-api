json.array! @weathers do |weather|
  json.extract! weather, :id, :name, :address
end