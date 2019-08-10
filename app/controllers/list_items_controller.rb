class ListItemsController < ApplicationController
 
    def new
      @list_item = ListItem.new
     # @categories = Category.all 
     
    end

    def create
       # binding.pry
        @list_item = ListItem.new(list_id: params[:list_item][:list_id], item_id: params[:list_item][:item_id])
        if @list_item.save
           redirect_to user_list_path(current_user, @list_item.list_id)  
        else 
            redirect_to category_items_path
        end
    end

    private


    def list_items_params
        params.require(:list_item).permit(:category_id)
    end
end
