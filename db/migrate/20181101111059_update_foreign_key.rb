class UpdateForeignKey < ActiveRecord::Migration[5.2]
  def change
  	# remove_foreign_key :comments, :gossip

  	# add_foreign_key :comments, :gossip, on_delete: :cascade
  end
end
