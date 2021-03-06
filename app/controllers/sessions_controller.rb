class SessionsController < ApplicationController

    def home
    end

    def new
        @user = User.new
        render :login
    end

    def facebook_omni
        @user = User.find_or_create_by(uid: auth['uid']) do |u|
           u.password = SecureRandom.hex(13)
           # binding.pry
           u.username = auth['info']['name']
           u.email = auth['info']['email']
        end
       # binding.pry
        session[:user_id] = @user.id
        flash[:success] = "You're now logged in"
        redirect_to user_path(@user.id)
    end
    
    def create
        @user = User.find_by(username: params[:user][:username])
        if @user && @user.authenticate(params[:user][:password])
            session[:user_id] = @user.id
            redirect_to user_path(@user)
        else
            flash[:error] = "Please try again"
            redirect_to '/login'
        end
    end
    
    def destroy
        session.clear
        redirect_to '/'
    end

    private

    def auth
        request.env['omniauth.auth']
    end
end
