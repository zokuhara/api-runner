json.json do
  json.post @posts do |post|
    json.id post.id
    json.title post.title
  end
end
