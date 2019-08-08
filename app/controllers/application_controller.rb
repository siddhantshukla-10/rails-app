class ApplicationController < ActionController::Base

  #helper_method makes these methods available for views
  helper_method :current_user, :logged_in?

  def current_user
    #return current_user if it has already been looked for otherwise(||=)
    #if there is a user logged in(session[:user_id]) then find that user from the database by User.find(session[:user_id])
    @current_user ||= User.find(session[:user_id]) if session[:user_id] 
  end

  def logged_in?
    #(!!current_user) will return true if there is a current user otherwise false
    !!current_user
  end

  def require_user
    if !logged_in?
      flash[:danger] = "You must be logged in to perform that action!!"
      redirect_to root_path
    end
  end

end
