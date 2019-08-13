class ListItemsController < ApplicationController
 
    def new
      @list_item = ListItem.new
     # @categories = Category.all 
     @lists = current_user.lists
     
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

    def edit
        #binding.pry
        @listItem = ListItem.find_by(list_id: params[:id] )
        @listItems = ListItem.where(list_id: params[:id])
    end

    def update
        binding.pry
        @listItems = ListItem.where(list_id: params[:id] )
        @listItems.update(purchaser: current_user.id)
        
    end

    def destroy
    
        list = ListItem.find_by(id: params[:id]).list.id
        ListItem.find_by(id: params[:id]).destroy
        user = current_user.id
        redirect_to user_list_path(user, list)
    end
   

    private


    def list_items_params
        params.require(:list_item).permit(:category_id)
    end
end
