class AddColumnThirdTimeItemIdInCategories < ActiveRecord::Migration[5.2]
  def change
    add_column :categories, :item_id, :integer
  end
end
