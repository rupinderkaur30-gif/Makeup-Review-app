class UsersController < ApplicationController
   def new
    @user = User.new
   end

   def create
    @user = User.new(user_params)
    if @user.save
      session[:user] = @user.id
      redirect_to products_path
    else
      render :new
    end
   end

   def show 
      @user = User.find(params[:id])
   end
   private
    
   def user_params
    params.require(:user).permit(:name, :email, :age, :password, :password_confirmation)
   end
end
