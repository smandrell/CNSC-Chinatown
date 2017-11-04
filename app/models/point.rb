class Point < ActiveRecord::Base
    geocoded_by :address
    after_validation :geocode
    
    # All possible categories for a point of interest.
    def self.all_categories
        %w('Dining', 'Historical', 'Attraction')
    end
end
