class ChangePurchaserIdColumnInListItems < ActiveRecord::Migration[5.2]
  def change
    rename_column :list_items, :purchaser_id, :user_id
  end
end
