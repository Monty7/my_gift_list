module ListsHelper
    def findUser(list)
        User.find_by(id: list.user_id)     
    end

    def display_other_lists_only(list)
        if current_user.id != list.user_id
            link_to list.name.capitalize, user_path(list.user_id)   
        end
    end

    def display_other_username_only(list)
        if current_user.id != (list.user_id)
            findUser(list).username
        end
    end

end
