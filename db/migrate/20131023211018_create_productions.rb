class CreateProductions < ActiveRecord::Migration
  def change
    create_table :productions do |t|
      t.integer :number
      t.string :location
      t.integer :number_of_editions

      t.timestamps
    end
  end
end
