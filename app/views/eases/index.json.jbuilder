json.array!(@eases) do |ease|
  json.extract! ease, :id, :name, :description, :icon, :image
  json.url ease_url(ease, format: :json)
end
