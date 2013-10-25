class ChangeColumnTypeToArtType < ActiveRecord::Migration
  def up
  	rename_column :pieces, :type, :art_type
  end

  def down
  	rename_column :pieces, :type, :type
  end
end
