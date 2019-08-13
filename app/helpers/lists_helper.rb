module ListsHelper
    def findUser(list)
  
        User.find_by(id: list.user_id)     
    end

end
