class UsersController < ApplicationController
    def index
        users = User.all
        render json: User
    end

    def show
        user = User.find(params[:id])

        render user
    end
end
