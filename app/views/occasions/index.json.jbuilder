json.array!(@occasions) do |occasion|
  json.extract! occasion, :id, :name, :description, :icon, :image
  json.url occasion_url(occasion, format: :json)
end
