json.array!(@owners) do |owner|
  json.extract! owner, :id, :name, :address, :city, :state, :zip, :university, :expreince
  json.url owner_url(owner, format: :json)
end
