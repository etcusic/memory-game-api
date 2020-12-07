class GameLogsController < ApplicationController
    
    def index
        @game_logs = GameLog.order('score DESC')[0..19]
        render json: @game_logs
    end

    def create
        @game_log = GameLog.new(game_log_params)
        # binding.pry
        @game_log.save
        # if @game_log.save
        #     binding.pry
        # else
        #     binding.pry
        # end
        redirect_to '/decks' #game_logs_path
    end

    def game_log_params
        params.require(:game_log).permit(:user_id, :deck_id, :score, :level)
    end

end
