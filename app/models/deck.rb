class Deck < ApplicationRecord
  belongs_to :user
  has_many :cards
  has_many :game_logs
end
