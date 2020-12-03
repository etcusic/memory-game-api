class CardsController < ApplicationController
    def index
        # binding.pry
        @cards = Deck.find_by_id(params[:deck_id]).cards
        render json: @cards
    end

    def show
        
    end
end