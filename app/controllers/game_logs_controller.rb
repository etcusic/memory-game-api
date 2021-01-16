class GameLogsController < ApplicationController
    
    def index
        @game_logs = GameLog.order('score DESC')[0..11].map { | log | {user: log.user.name, deck: log.deck.title, score: log.score} }
        render json: @game_logs
    end

    def create
        @game_log = GameLog.new(game_log_params)
        @game_log.save
        redirect_to '/decks' 
    end

    private

    def game_log_params
        params.require(:game_log).permit(:user_id, :deck_id, :score, :level)
    end

end
