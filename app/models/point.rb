class Point < ActiveRecord::Base
    geocoded_by :address
    after_validation :geocode
    
    @@nearby = 100.0
    
    # All possible categories for a point of interest.
    def self.all_categories
        %w(Dining Historical Attraction)
    end
    
    def self.nearbyPoints(latitude, longitude)
        points = Point.all.select {|point| ((((point.latitude - latitude["latitude"].to_f)**2) + ((point.longitude - longitude["longitude"].to_f)**2))**0.5) < @@nearby }
        return points
    end
end
