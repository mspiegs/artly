class AddLocationToPieces < ActiveRecord::Migration
  def change
  	add_column :pieces, :location_id, :integer
  end
end
