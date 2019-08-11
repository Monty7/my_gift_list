class ItemsController < ApplicationController

    def index
        #binding.pry
        #/categories/:category_id/items
        #/items
        #/how to handle whether a user wants to see all items /index or nested items /categories/:category_id/index
        @category = Category.find(params[:category_id])
        @item = Item.new
       # @category = Category.find(params[:id])
        #@items = @category.items
    end

    def show
        @list_item = ListItem.new
       @item = Item.find(params[:id])
        @lists = current_user.lists
       #@category = Category.find(params[:category_id])
       #binding.pry
    end

    def create
        binding.pry
        @list_item = ListItem.find(params[:id])
    end

  
end
