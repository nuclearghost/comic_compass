json.array!(@photos) do |photo|
  json.extract! photo, :id, :title, :url, :shop_id
  json.url photo_url(photo, format: :json)
end
