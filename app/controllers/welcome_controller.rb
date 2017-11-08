class WelcomeController < ApplicationController
  
  def index
  end
  
  def map
    @points = Point.all
    @hash = Gmaps4rails.build_markers(@points) do |pt, marker|
      next if pt.latitude.nil? || pt.longitude.nil?
      marker.lat pt.latitude
      marker.lng pt.longitude
      marker.infowindow pt.name
    end
  end
  
end
