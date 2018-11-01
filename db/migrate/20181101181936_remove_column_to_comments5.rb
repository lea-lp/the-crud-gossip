class RemoveColumnToComments5 < ActiveRecord::Migration[5.2]
  def change
  	remove_column :comments, :anonymous_commentor, :string
  end
end
