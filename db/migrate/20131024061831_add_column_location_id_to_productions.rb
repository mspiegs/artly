class AddColumnLocationIdToProductions < ActiveRecord::Migration
  def change
    add_column :productions, :location_id, :integer
  end
end
