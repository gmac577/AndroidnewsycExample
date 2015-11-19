@story

Feature: Reading stories
  As a Hacker News user
  I want to be able to read, forward, vote and comment on the stories I read
  So I can be informed and particpate in the Hacker News Community

  Background:
  	Given I am on the Front Page screen
    

Scenario: Navigating to the story and back
    When I touch the story
    And I touch the Y icon
    Then I am on the Front Page screen

Scenario: Reading the Original Article in the in-app and Chrome browser
    When I choose the story I want to read
    And I touch the Original Article icon
    And I touch the Dancing Man Icon
    And I touch Just once
    And I touch the back button
    And I touch the back button
    Then I am on the Front Page screen
@read
Scenario: Sharing/Forwarding the story
    When I choose the story I want to read
    And I touch the Forward Article icon
    And I am on the Share story screen
    And I touch the Article button
    And I touch the HN Page button
	And I scroll through the options
	And I touch the X 
	And I touch the Y icon
    Then I am on the Front Page screen



    #And I see the Profile icon
    #And I see the profile bar
    #And I click the Points button


