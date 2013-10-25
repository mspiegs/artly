class AddIndexToLocations < ActiveRecord::Migration
  def change
  	add_index :locations, :piece_id
  end
end
