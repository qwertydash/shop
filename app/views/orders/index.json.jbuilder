json.array!(@orders) do |order|
  json.extract! order, :id, :name, :phone, :store
  json.url order_url(order, format: :json)
end
