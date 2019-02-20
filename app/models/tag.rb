class Tag < ApplicationRecord
  has_many :used_tags, dependent: :destroy
end
