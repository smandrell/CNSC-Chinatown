class Point < ActiveRecord::Base
    geocoded_by :address
    after_validation :geocode
    
    def self.all_categories
        %w(Dining Historical Attraction)
    end
    
end
