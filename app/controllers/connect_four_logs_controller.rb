class ConnectFourLogsController < ApplicationController
       
    def index
        # should I account for scoped route and all logs as well? (alias out nested index in routes.rb)
        @connect_four_logs = ConnectFourLog.where(user_id: params["user_id"]).map { | log | {user: log.user.name, deck: log.deck.title, time: log.time, outcome: log.outcome} }
        render json: @connect_four_logs
    end

    def create
        # binding.pry
        @connect_four_log = ConnectFourLog.new(game_log_params)
        @connect_four_log.save
        redirect_to '/decks' 
    end

    private

    def game_log_params
        params.require(:connect_four_log).permit(:user_id, :deck_id, :time, :outcome)
    end

end
