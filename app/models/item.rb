class Item < ApplicationRecord
    belongs_to :category
    has_many :list_items
    has_many :lists, through: :list_items
end
