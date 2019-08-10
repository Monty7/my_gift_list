class ApplicationController < ActionController::Base
helper_method :current_user, :logged_in? #To be accessed in the views

private
    def current_user
        @user = User.find_by(id: session[:user_id]) if session[:user_id]
    end

    def logged_in?
        !!session[:user_id]
    end

end
