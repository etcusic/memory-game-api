class UsersController < ApplicationController
    def index
        @users = User.all
        # binding.pry
        render json: @users
    end

    def show
        binding.pry
    end

    private

    def user_params
        binding.pry
        params.require(:student).permit(
            :id, :name, :image
        )
    end

end