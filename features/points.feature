Feature: display points of interest on Points of Interest page

  As a tourist searching for Chinatown points of interest
  So that I can quickly locate popular China attractions
  I want to see the list of points of interest

Background: points of interest have been added to the database

  Given the following points of interest exist:
  | name                             | address                  | longitude     | latitude      | description                                       | category          |
  | Old St. Mary's Cathedral         | 660 California St.       | 1.0           | 4.0           | first Asian church in North America               | Historical        |
  | Tianhou Temple                   | 125 Waverly Place        | 2.0           | 5.0           | oldest Buddhist temple in the US                  | Attraction        |
  | Dragon's Gate                    | Bush St. & Grant Ave.    | 3.0           | 6.0           | only authentic Chinatown Gate in North America    | Attraction        |

  And I am on the Points page
  Then 3 seed points should exist
  And I should see the point trait "Old St. Mary's Cathedral"
  And I should see the point trait "125 Waverly Place"

Scenario: navigate to points of interest page
  Given I am on the Chinatown homepage
  When I press "openNav"
  And I follow "Points of Interest"
  Then I should see "Points of Interest"
  
Scenario: Navigate to Create New point
  Given I follow "New Point"
  Then I should see the form field "Name"
  And I should see the form field "Latitude"
  And I should see the form field "Longitude"
  And I should see the form field "Description"
  And I should see the form field "Address"

Scenario: Create new Point
  Given I follow "New Point"
  And I fill in "Name" with "Michael's Restaraunt"
  And I fill in "Dining" for "Category"
  When I press "Create Point"
  And I follow "Back"
  Then I should see "Michael's Restaraunt"
  And I should see "Points of Interest"
  
Scenario: Edit a Point
  Given I want to "Edit" point "Old St. Mary's Cathedral"
  When I fill in "Description" with "Best food ever!"
  And I press "Update Point"
  Then I should see "Best food ever!"
  And I should see "Point was successfully updated."

Scenario: Delete a Point
  Given I want to "Destroy" point "Old St. Mary's Cathedral"
  Then I press "Ok" on the popup window
  Then I should not see "Michael's Restaraunt"
  And I should see "Points of Interest"
  
  
  
  
  
  
