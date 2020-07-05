class AuthController < ApplicationController
    def login
        user = User.find_by(user_name: params[:username])

        if user && user.authenticate(params[:password])
            render json: user 
        else 
            render json: {errors: "User Doesn't Exist!"}
        end
    end

end