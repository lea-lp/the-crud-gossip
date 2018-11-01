class AddColumnToComments2 < ActiveRecord::Migration[5.2]
  def change
    add_reference :comments, :user, foreign_key: :gossip

  end
end
