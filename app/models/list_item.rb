class ListItem < ApplicationRecord
    belongs_to :item
    belongs_to :list 
    #belongs_to :user, through: :list this doesn't work
    #try this maybe? delegate :user, to: :list
    belongs_to :purchaser, class_name: "User", foreign_key: "user_id", optional: true 
    #I want to refer to the user_id on my column as a purchaser
end
