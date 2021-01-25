class UsersController < ApplicationController
    def index
        @users = User.all
        # binding.pry
        render json: @users
    end

    def connect_four_logs
        @connect_four_logs = User.find_by_id(user_params.id).connect_four_logs
        binding.pry
        render json: @connect_four_logs
    end

    private

    def user_params
        binding.pry
        params.require(:student).permit(
            :id, :name, :image
        )
    end

end