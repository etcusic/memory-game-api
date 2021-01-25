class User < ApplicationRecord
    has_many :decks
    has_many :game_logs
    has_many :connect_four_logs
end
