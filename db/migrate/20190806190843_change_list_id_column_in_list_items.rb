class ChangeListIdColumnInListItems < ActiveRecord::Migration[5.2]
  def change
    rename_table :personal_lists, :lists
  
  end
end
