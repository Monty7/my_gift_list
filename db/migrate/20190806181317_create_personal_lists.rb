class CreatePersonalLists < ActiveRecord::Migration[5.2]
  def change
    create_table :personal_lists do |t|
      t.string :name

      t.timestamps
    end
  end
end
