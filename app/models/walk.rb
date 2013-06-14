# == Schema Information
#
# Table name: walks
#
#  id           :integer          not null, primary key
#  time         :time
#  date         :date
#  description  :text
#  neighborhood :string(255)
#  lat          :float
#  lng          :float
#

class Walk < ActiveRecord::Base
  attr_accessible :time, :date, :location, :description, :neighborhood
  has_many :dogs, :through => :walk_dogs

  before_save:geocode
    def geocode
    result = Geocoder.search(self.neighborhood).first

    if result.present?
      self.lat = result.latitude
      self.lng = result.longitude
    end
  end
end
