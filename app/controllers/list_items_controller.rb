class ListItemsController < ApplicationController
 
    def new
      @list_item = ListItem.new
     @lists = current_user.lists
     
    end

    def create
        @list_item = ListItem.new(list_id: params[:list_item][:list_id], item_id: params[:list_item][:item_id])
        if @list_item.save
           redirect_to user_list_path(current_user, @list_item.list_id)  
        else 
            redirect_to category_items_path
        end
    end

    def edit
        @listItem = ListItem.find_by(list_id: params[:id] )
        @listItems = ListItem.where(list_id: params[:id])
    end

    def update
        @listItems = ListItem.find_by(list_id: params[:id], item_id: params[:format] )
        list = List.find(params[:id])
        list_owner = list.user
       # binding.pry
        user = User.find_by(id: current_user.id)
        if params[:item][:checked] == "0"
            @listItems.update(purchaser: nil)
        else
            @listItems.update(purchaser: user)
        end

        redirect_to user_list_path(list_owner.id, list.id)
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
