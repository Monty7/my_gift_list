class CategoriesController < ApplicationController
    def index
        #binding.pry
        @categories = Category.all
        @user = User.find(session[:user_id])
       
        #@items = @categories.items
    end
end
