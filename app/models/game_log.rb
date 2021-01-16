class GameLog < ApplicationRecord
  belongs_to :user
  belongs_to :deck
  # scope :high_scores, ->(column = :score) { order(column => :desc) } - need to add a stopping point
end
