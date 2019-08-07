class CreateListItems < ActiveRecord::Migration[5.2]
  def change
    create_table :list_items do |t|
      t.integer :list_id
      t.integer :item_id
      t.integer :purchaser_id

      t.timestamps
    end
  end
end
