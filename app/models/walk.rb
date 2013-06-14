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
  has_and_belongs_to_many :dogs
  has_many :discussions

  before_save:geocode
    def geocode
    result = Geocoder.search(self.neighborhood).first

    if result.present?
      self.lat = result.latitude
      self.lng = result.longitude
    end
  end
end
