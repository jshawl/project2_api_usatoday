class Photo < ActiveRecord::Base
  belongs_to :place
  validates :flickr_id, :presence => true
end
