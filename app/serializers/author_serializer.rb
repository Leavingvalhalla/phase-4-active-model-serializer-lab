class AuthorSerializer < ActiveModel::Serializer
  attributes :name
  has_one :profile, include: [:username, :email, :bio, :avatar_url]
  has_many :posts, serializer: AuthorPostSerializer
end
