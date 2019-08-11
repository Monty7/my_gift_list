module ListItemsHelper

    def find_listItem(item)
       ListItem.find_by(list_id: params[:id], item_id: item.id)
    end
end
