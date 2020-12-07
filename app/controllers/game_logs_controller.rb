class GameLogsController < ApplicationController
    
    def index
        # add some seed data to check on this
        binding.pry
    end

    def create
        binding.pry
        @game_log = GameLog.new()
    end

end
