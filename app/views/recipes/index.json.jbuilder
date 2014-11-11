json.array!(@recipes) do |recipe|
  json.extract! recipe, :id, :title, :description, :image, :image_credit, :yeild, :prep, :cook, :total, :ingredients, :diet, :course, :ease, :categories, :tags, :ratings, :comments, :facebook, :twitter, :pinterest, :stumbleupon, :gplus, :author, :added_on
  json.url recipe_url(recipe, format: :json)
end
