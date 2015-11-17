@search
Feature: Search Page
  As a Hacker News user
  I want to search the articles of Hacker News
  So I find articles that are specific to my needs

Scenario: Using the Advanced Search function
	When I touch Stack on the tab bar
	And I touch the magnifying glass icon
	And I enter "Microsoft" into the Search field
	And I touch the Relevance button
	And I choose "Date"
	And I touch the All button 
	And I choose "Stories"
	Then I can see "Microsoft in the search results

	
Scenario: Using the Search function
 	When I touch Stack on the tab bar
	And I see the Search field
	And I enter "Microsoft"
	And I touch the magnifying glass icon
	Then I can see "Microsoft" on the search results page