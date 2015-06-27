json.array!(@books) do |book|
  json.extract! book, :id, :shopname, :telno, :address, :url
  json.url book_url(book, format: :json)
end
