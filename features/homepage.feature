Feature: properly navigate the homepage

  As a user interest in Chinatown restaurants
  So that I can quickly look at a list of restaurants in Chinatown
  I want to see the list of restaurants

Background: Be on the homepage

  Given I am on the Chinatown homepage


Scenario: See the home page
  Then I should see "Upcoming Partner Events"

Scenario: navigate to restaurants page
  When I press "openNav"
  And I follow "Points of Interest"
  Then I should see "Points of Interest"
  

  
  
