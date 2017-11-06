Feature: properly navigate the homepage

  As a user interest in Chinatown restaurants
  So that I can quickly look at a list of restaurants in Chinatown
  I want to see the list of restaurants

Background: restaurants have been added to the database

  Given PENDING: the following points of interests exist:


  And I am on the Restaurant page
  Then 2 seed points should exist

@wip
Scenario: navigate to restaurants page
  Given I am on the Chinatown homepage
  When I press "openNav"
  And I follow "Restaurants"
  Then I should see "Listing Restaurants"
