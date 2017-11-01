class Point < ActiveRecord::Base
    geocoded_by :address
    after_validation :geocode
    
    attr_accessor :category, :description, :latitude, :longitude, :name, :address
    
    def self.all_categories
        %w('Dining', 'Historical', 'Attraction')
    end
end
