class Production < ActiveRecord::Base
  attr_accessible :location, :number, :number_of_editions, :piece_id, :location_id, :name

  belongs_to :piece
  belongs_to :location
end
