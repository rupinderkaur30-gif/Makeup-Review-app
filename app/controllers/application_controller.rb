class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :current_user , :logged_in?


  def current_user
    if session[:user_id]
      User.find(session[:user_id])
    end
  end

  def logged_in?
    !!current_user
  end

  def require_login
    if !logged_in?
      redirect_to login_path
    end
  end

end
