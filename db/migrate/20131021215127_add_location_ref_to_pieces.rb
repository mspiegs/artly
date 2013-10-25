class AddLocationRefToPieces < ActiveRecord::Migration
  def change
    add_index :pieces, :location_id
  end
end
