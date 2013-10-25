class ArtType < ActiveRecord::Base
  attr_accessible :type_of_art

  has_and_belongs_to_many :pieces
end
