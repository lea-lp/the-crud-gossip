class RemoveColumnToComments < ActiveRecord::Migration[5.2]
  def change
    remove_column :comments, :user_id
    remove_column :comments, :gossip_id
  end
end
