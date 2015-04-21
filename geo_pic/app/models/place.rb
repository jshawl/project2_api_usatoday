class Place < ActiveRecord::Base
  belongs_to :user
  has_many :photos
  validates :location, :presence => true
end
