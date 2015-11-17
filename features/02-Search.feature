@search
Feature: Search Page
  As a Hacker News user
  I want to search the articles of Hacker News
  So I find articles that are specific to my needs

################################################################################################################
## NOTE: As of now, the Hacker News search function is disabled and unable to connect to the Hacker News site ##
## I will complete the needed functionality                                                                   ##
##                                                                                                            ##
################################################################################################################

Background:
	Given I touch Stack on the tab bar

Scenario: Using the Advanced Search function
	When I successfully enter search criteria
	#Then I can see "Microsoft" in the search results
	
Scenario: Using the Search function
 	When I successfully search
	#Then I can see "Microsoft" in the search results