class ListsController < ApplicationController
   # include ActionView::Helpers::ListItemsHelper::find_listItem
   include ListsHelper

   def index
    @lists = List.all
   # User.where(id: 5).select(:id, :first_name).take 
   # binding.pry
    
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
   
    @user = User.find(@list.user_id)
  #  @listItem = ListItem.find_by(list_id: params[:id], item_id: item.id)
  # binding.pry

   end

   def add_purchaser
    binding.pry
   end

   def destroy
       # binding.pry
        ListItem.where(list_id: params[:id]).destroy_all  #Look for all instances of the list in the list item table
        List.find_by(id: params[:id]).destroy
        user = current_user.id
        redirect_to user_path(user)
   end


private

    def list_params
        params.require(:list).permit(:name)
    end
end