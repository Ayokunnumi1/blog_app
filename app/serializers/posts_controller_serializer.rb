class PostsControllerSerializer
  include JSONAPI::Serializer
  attributes :title, :id
  has_many :comments, :likes
  belongs_to :users
end
