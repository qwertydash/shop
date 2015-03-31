json.array!(@items) do |item|
  json.extract! item, :id, :category_id, :title, :text, :price, :image
  json.url item_url(item, format: :json)
end
