class Vote < ApplicationRecord
  belongs_to :user
  belongs_to :voted, polymorphic: true
end
