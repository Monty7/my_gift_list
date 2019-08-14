class ApplicationController < ActionController::Base
helper_method :current_user, :logged_in?, :found_listItem #To be accessed in the views

private
    def current_user
        @user = User.find_by(id: session[:user_id]) if session[:user_id]
    end

    def logged_in?
        !!session[:user_id]
    end

    def findUser(list)
        User.find_by(id: list.user_id)     
    end

    def found_listItem(item, list)
        ListItem.find_by(item_id: item.id, list_id: list.id)
    end

end
