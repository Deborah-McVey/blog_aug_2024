class SessionsController < ApplicationController
    def create
        if user = User.authenticate(params[:email], params[:password])
            session[:user_id] = user.indexredirect_to root_path, notice: "Logged in successfully"
        else
            flash.now[:alert] = "Invalid login/password combination"
            render :new
        end
    end
end
