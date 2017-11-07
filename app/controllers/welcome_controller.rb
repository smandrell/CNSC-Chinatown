class WelcomeController < ApplicationController
  
  def index
  end
  
  def map
    @festivals = Point.all
    @hash = Gmaps4rails.build_markers(@points) do |pt, marker|
      marker.lat pt.latitude
      marker.lng pt.longitude
      marker.infowindow pt.name
    end
  end
  
end
