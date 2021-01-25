class User < ApplicationRecord
    has_many :decks
    has_many :game_logs
    has_many :connect_four_logs

    def connect_four_logs
        self.connect_four_logs
    end
end
