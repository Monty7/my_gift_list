class UsersController < ApplicationController
    def new
        #load the signup form
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save
            session[:user_id] = @user.id
            redirect_to user_path(@user)
        else
            render :new
        end
    end

    def show
        @user = User.find(params[:id])
        @lists = @user.lists
        
    end
    
    private
    
    def user_params
        params.require(:user).permit(:username, :email, :password)
    end
    
end
