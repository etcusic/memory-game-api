class User < ApplicationRecord
    has_many :decks, :game_logs
end
