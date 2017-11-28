Feature: display results of filtering merchants list and restuarants list
  
    As a user looking for specific locations
    I want to filter by type of locations
    I should see the results of my filter
    
Background: locations have been added to the database
  
    Given the following points of interest exist:
    | name                             | address                  | longitude     | latitude      | description                                       | category
    | Old St. Mary's Cathedral         | 660 California St.       | 1.0           | 4.0           | First Asian church in North America               | Historical
    | Tianhou Temple                   | 125 Waverly Place        | 2.0           | 5.0           | Oldest Buddhist temple in the US                  | Historical
    | Dragon's Gate                    | Bush St. & Grant Ave.    | 3.0           | 6.0           | Only authentic Chinatown Gate in North America    | Attraction
    | Hong Kong Clay Pot Restaurant    | 960 Grant Ave.           | 4.0           | 7.0           | Chinese clay pot lunch & dinner spot.             | Dining
    | Hunan Home's Restaurant          | 622 Jackson St.          | 1000.0        | 8.0           | Family owned Chinese cooking with booths          | Dining
    | Good Mong Kok Bakery             | 1039 Stockton St.        | 6.0           | 10000.0       | Homemade dim sum and baked goods                  | Dining

    And I am on the Points page
    Then 6 seed points should exist

@wip    
Scenario: filter locations by restaurants
    Given I am on the Points page
    When I check the following categories: Dining
    Then I should see "Hong Kong Clay Pot Restaurant"
    And I should see "Hunan Home's Restaurant"
    And I should see "Good Mong Kok Bakery"
    And I should not see "Dragon's Gate"
    And I should not see "Tianhou Temple"

@wip    
Scenario: all categories selected
  When I check the following categories: Dining, Historical, Attraction
  And I press "Refresh"
  Then I should see all the points

@wip
Scenario: Search for Points based on location
  Given I am on the Points page
  When I fill in "3" for "Latitude"
  And I fill in "3" for "Longitude"
  Then I should see "Tianhou Temple"
  And I should not see "Hunan Home's Restaurant"
  And I should not see "Good Mong Kok Bakery"