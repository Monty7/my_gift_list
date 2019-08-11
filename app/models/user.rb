class User < ApplicationRecord
    has_many :lists
    has_many :list_items, through: :lists 
    has_many :items, through: :list_items
    #single source of truth, a deeeeeeep relationship
    has_many :purchased, class_name: "ListItem", foreign_key: :user_id
    #I want the method [purchased] to return an array of list_items where the foreign_key user_id matches this instance
    #has_secure_password if: :facebook_login?
    has_secure_password 
    # with_options if: :facebook_login? do |user|
    #     user.has_secure_password
     
    #   #  admin.validates :password, length: { minimum: 10 }
    #   #  admin.validates :email, presence: true
    #   end
      
    validates :username, :email, presence: true
    validates :username, :email, uniqueness: true

    # def facebook_login?
        
    #     uid_present = true
    #     if self.uid == nil
    #         uid_present = false
    #     end
       
    #     uid_present
    
    # end
end
