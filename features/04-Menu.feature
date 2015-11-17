@menu
Feature: Using the menu
  As a Hacker News user
  I want to be able to use the menu for the Hacker News 2 Mobile App
  So I can navigate to the areas that are of interest to me

  Background:
    Given I touch Menu on the tab bar

Scenario: Going to the Front page
	When I touch the Front Page button
	Then I am on the Front Page screen 

Scenario: Going to the Ask page
	When I touch the Ask button
	Then I am on the Front Page screen 

Scenario: Going to the Best page
	When I touch the Best button
	Then I am on the Front Page screen 

Scenario: Going to the Active page
	When I touch the Active button
	Then I am on the Front Page screen 

Scenario: Going to the New page
	When I touch the New button
	Then I am on the Front Page screen 

Scenario: Going to the Submit page
	When I touch the Submit button
	Then I am on the Front Page screen 

Scenario: Going to the Settings page
	When I touch the Settings button
	Then I am on the Front Page screen 
	
Scenario: Going to the About page
	When I touch the About button
	Then I am on the Front Page screen  

Scenario: Going to the Login page
    When I touch the Login button
	Then I am on the Front Page screen 