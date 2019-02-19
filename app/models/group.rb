class Group < ApplicationRecord
  has_many :group_admins, dependent: :destroy
  has_many :posts
  has_many :used_tags, as: :tagged, dependent: :destroy
end
