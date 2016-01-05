json.array!(@pets) do |pet|
  json.extract! pet, :id, :name, :types, :breed, :age, :weight, :date_of_last_vist
  json.url pet_url(pet, format: :json)
end
