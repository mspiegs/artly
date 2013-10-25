class ChangeColumnTypeToArtMedium < ActiveRecord::Migration
  def up
  	rename_column :pieces, :art_type, :art_medium
  end

  def down
  	rename_column :pieces, :art_type, :art_type
  end
end
