@login 
Feature: Login feature
  As a Hacker News user
  I want to be able to login to the Hacker News 2 Mobile App
  So my login is validated and I can use the app

  Background:
    Given I am on the Login screen


Scenario: Successful Login
  When I enter "valid" login credentials
  Then I am on the Front Page screen

Scenario: Unsuccessful Login
  When I enter "invalid" login credentials
  And I see the alert message "*Login failed. Please check your network connection, username, and password, then try again."
  Then I do not see the Front Page screen

Scenario: Blank Login
  When I enter "blank" login credentials
  And I see the alert message "*Login failed. Please check your network connection, username, and password, then try again."
  Then I do not see the Front Page screen

