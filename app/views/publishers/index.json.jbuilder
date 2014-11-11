json.array!(@publishers) do |publisher|
  json.extract! publisher, :id, :name, :url, :logosource, :description
  json.url publisher_url(publisher, format: :json)
end
