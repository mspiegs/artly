class Location < ActiveRecord::Base
  attr_accessible :address, :city, :contact_person, :name, :notes, :phone, :state, :zip, :piece_attributes

  has_many :pieces  
  has_many :productions
end
