class RemoveColumnToComments2 < ActiveRecord::Migration[5.2]
  def change
    remove_column :comments, :user_id, :bigint
  end
end
