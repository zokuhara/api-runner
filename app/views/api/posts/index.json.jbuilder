# json.posts @posts do |post|
#   json.id post.id
#   json.title post.title
# end


json.array! @posts do |post|
  json.id post.id
  json.title post.title
end
