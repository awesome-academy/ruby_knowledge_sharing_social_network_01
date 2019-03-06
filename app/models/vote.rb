class Vote < ApplicationRecord
  belongs_to :user
  belongs_to :voted, polymorphic: true
  enum vote_type: {upvote: 1, downvote: 2}
end
