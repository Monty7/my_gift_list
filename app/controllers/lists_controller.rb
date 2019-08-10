class ListsController < ApplicationController
   def index   
   end

   def new
    @list = List.new
   end

   def create
    @user = User.find_by(id: session[:user_id])
    @list = @user.lists.build(list_params)
 
    if @list.save
        redirect_to user_list_path(@user, @list)
    else
        render :new
    end
   end

   def show
    @list = List.find(params[:id])
    @user = User.find(params[:user_id])

   end
end

def list_params
    params.require(:list).permit(:name)
end
