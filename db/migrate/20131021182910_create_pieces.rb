class CreatePieces < ActiveRecord::Migration
  def change
    create_table :pieces do |t|
      t.string :name
      t.string :type
      t.date :date
      t.string :number_of_pieces
      t.string :number_in_production
      t.string :venue
      t.date :delivery_date
      t.string :removal_date

      t.timestamps
    end
  end
end
