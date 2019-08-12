module UsersHelper

  def find_lists(list)
 
    ListItem.find_by(list_id: list.id)
  end
end
