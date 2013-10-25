class AddNameColumnToProductions < ActiveRecord::Migration
  def change
    add_column :productions, :name, :string
  end
end
