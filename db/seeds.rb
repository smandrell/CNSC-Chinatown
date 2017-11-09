# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


points = [{:name => 'Hong Kong Clay Pot City Restaurant', :address => '960 Grant Ave', :latitude => '-122.406511', :longitude => "37.795884", :description => "Clay pots soaked in water cook & steam many of the dishes at this Chinese lunch & dinner spot.", :category => "Dining"},
        {:name => 'Hunan Homes Restaurant', :address => '622 Jackson St', :latitude => '-122.405694', :longitude => "37.796413", :description => "Fans of “homestyle” Hunanese cooking trust this “reliable” Chinatown spot for “generous” servings of “freshly made” fare with “fabulous” sauces that range from “not spicy” to “really hot” (if you're “feeling strong”, say “make me sweat”); though it has “dated decor”, service is “a cut above” what you'd expect for such a “cheap” price.", :category => "Dining"}
  	 ]

points.each do |point|
  Point.create!(point)
end
