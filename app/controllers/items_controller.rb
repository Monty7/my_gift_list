class ItemsController < ApplicationController

    def index
   
        #/categories/:category_id/items
        #/items
        #/how to handle whether a user wants to see all items /index or nested items /categories/:category_id/index
        @category = Category.find(params[:category_id])
       # @category = Category.find(params[:id])
        @items = @category.items
     

    end
end
