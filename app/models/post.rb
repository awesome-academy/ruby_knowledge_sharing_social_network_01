class Post < ApplicationRecord
  belongs_to :group
  belongs_to :user
  has_many :used_tags, as: :tagged, dependent: :destroy
  has_many :votes, as: :voted, dependent: :destroy
  has_many :comments, dependent: :destroy
end
