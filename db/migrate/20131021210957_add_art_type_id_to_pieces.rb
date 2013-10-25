class AddArtTypeIdToPieces < ActiveRecord::Migration
  def change
  	add_column :pieces, :art_type_id, :integer
  end
end
