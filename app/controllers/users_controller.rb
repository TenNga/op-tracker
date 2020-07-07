class UsersController < ApplicationController
    def index
        users = User.all
        render json: users
    end

    def show
        user = User.find(params[:id])

        render json: user
    end

    def create
        user = User.create({
            user_name: params[:user_name],
            password: params[:password],
            role: params[:role]
        })

        if user.save
            render json: user
        else
            render json: {error: user.errors.full_messages}
        end
    end

    private 

    def user_params
        params.require(:user).permit(:user_name, :password, :role)
    end
end
