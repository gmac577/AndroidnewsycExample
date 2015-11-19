@homepage
Feature: Front Page
  As a Hacker News user
  I want to use the Hacker News Front Page
  So I read the articles and adjust screen elements if I need

Background:
	Given I am on the Front Page screen

Scenario: Choosing the Menu
	Then I select the Menu icon

Scenario: Refreshing the page
	When I touch Refresh on the tab bar
	Then I am on the Front Page screen
@con
Scenario: Changing the screen contrast
	When I touch Stack on the tab bar
	And I see the screen contrast change
	Then I am on the Front Page screen

Scenario: Changing the font size
	When I touch Stack on the tab bar
	And I see the text size adjust
	Then I am on the Front Page screen

Scenario: Reading the story
	When I touch the story
	Then I am on the Front Page screen