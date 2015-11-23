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
    And I navigate to the article
    Then I am on the Front Page screen

Scenario: Sharing/Forwarding the story
    When I choose the story I want to read
    And I successfully share the story  
    Then I am on the Front Page screen

@read
Scenario: Looking at the poster's profile
	When I choose the story I want to read
    And I navigate to the poster's profile
    Then I am on the Front Page screen


