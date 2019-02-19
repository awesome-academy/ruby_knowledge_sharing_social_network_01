class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post
  has_many :votes, as: :voted, dependent: :destroy
end
