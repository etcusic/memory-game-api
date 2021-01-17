class ConnectFourLogsController < ApplicationController
       
    def index
        @connect_four_logs = ConnectFourLog.all.map { | log | {user: log.user.name, deck: log.deck.title, time: log.time, outcome: log.outcome} }
        render json: @connect_four_logs
    end

    def create
        @connect_four_log = ConnectFourLog.new(game_log_params)
        @connect_four_log.save
        redirect_to '/decks' 
    end

    private

    def game_log_params
        params.require(:connect_four_log).permit(:user_id, :deck_id, :time, :outcome)
    end

end
