class User < ApplicationRecord
    has_many :decks
    has_many :game_logs
end
