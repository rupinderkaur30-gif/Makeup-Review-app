class UsersController < ApplicationController
   def new
    @user = User.new
   end

   def create
    @user = User.create(user_params)
    session[:user] = @user.id
    redirect_to products_path
   end

   private
    
   def user_params
    params.require(:user).permit(:name, :email, :age, :password, :password_confirmation)
   end
end
