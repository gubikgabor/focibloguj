class Comment < ApplicationRecord
  belongs_to :post
  validates :username, presence:true
  validates :body, presence:true, length: {maximum: 200}
end
