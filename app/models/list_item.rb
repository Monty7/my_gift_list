class ListItem < ApplicationRecord
    belongs_to :item
    belongs_to :list 
    #belongs_to :user, through: :list this doesn't work
    #try this maybe? delegate :user, to: :list
    belongs_to :purchaser, class_name: "User", foreign_key: "user_id", optional: true 
    #I want to refer to the user_id on my column as a purchaser

    validates :list_id, uniqueness: { scope: :item_id, message: "You already have this item in your list." }

    def purchased?
        self.purchaser != nil
    end

    def self.find_list(params_id)
        where(list_id: params_id)
    end

end
