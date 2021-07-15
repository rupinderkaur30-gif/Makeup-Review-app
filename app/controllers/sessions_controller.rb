class SessionsController < ApplicationController

    def login 

    end

    def create
     user = User.find_by_name(params[:name])
     if user && user.authenticate(params[:password])
        session[:user_id] = user.id
        redirect_to products_path
     else
        flash[:errors] = ["Invalid username or password!"]
        redirect_to login_path
     end
    end

    def logout
        session.clear 
        redirect_to new_user_path
    end
end