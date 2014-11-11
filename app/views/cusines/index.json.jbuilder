json.array!(@cusines) do |cusine|
  json.extract! cusine, :id, :name, :description, :icon, :image
  json.url cusine_url(cusine, format: :json)
end
