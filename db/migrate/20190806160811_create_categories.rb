class Categories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
      t.string :name
      t.integer :item_id

      t.timestamps
    end
  end
end
