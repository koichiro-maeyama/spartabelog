json.array!(@shops) do |shop|
  json.extract! shop, :id, :shopname, :telno, :address, :url
  json.url shop_url(shop, format: :json)
end
