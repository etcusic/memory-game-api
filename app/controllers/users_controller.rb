class UsersController < ApplicationController
    def index
        @users = User.all
        # binding.pry
        render json: @users
    end
end