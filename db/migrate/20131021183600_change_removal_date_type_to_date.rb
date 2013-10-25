class ChangeRemovalDateTypeToDate < ActiveRecord::Migration
  def up
  	change_column :pieces, :removal_date, :date
  end

  def down
  	change_column :pieces, :removal_date, :string
  end
end
