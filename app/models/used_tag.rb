class UsedTag < ApplicationRecord
  belongs_to :tag
  belongs_to :tagged, polymorphic: true
end
