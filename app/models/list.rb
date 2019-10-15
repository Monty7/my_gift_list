class List < ApplicationRecord
    belongs_to :user
    has_many :list_items, dependent: :destroy
    has_many :items, through: :list_items

    validates :name, presence: true
    #validates :name, uniqueness: true
# Make ssure that a list is unique only to the current user
validates :name, uniqueness: { scope: :user_id, message: "You already have a list that is named this." }

end
