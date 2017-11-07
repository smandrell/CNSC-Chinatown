class AddGeocodingToModels < ActiveRecord::Migration
  def change
    add_column :points, :latitude, :float
    add_column :points, :longitude, :float
    add_column :points, :address, :string
    
  end
end
