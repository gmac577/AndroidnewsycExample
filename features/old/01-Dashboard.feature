@dashboard
Feature: Corelation Home Search & Lobby Tracker
  As a user
  I want to be able to use the Lobby Tracking System to see Members waiting for assistance and
  be able to search for their information to better assist them

Background: Successful Login
  Given I log in successfully

@done
Scenario: Lobby Tracking System
  Given I am on the "Dashboard" screen
  When I click on the Lobby Tracker link
  Then I will be taken to the Lobby Tracking System Login Page

@done
Scenario: Search for Customer - No search parameters entered/selected
  Given I am on the "Dashboard" screen
  When I touch the Search button
  Then the member search results will be displayed

@done
Scenario: Search for Customer - Name entered and Name parameter selected
  Given I am on the "Dashboard" screen
  When I search for a customer by Name using "Love, Michelle"
  Then I am on the "Member Details" screen

@done
Scenario: Search for Customer - Number entered and TIN parameter selected
  Given I am on the "Dashboard" screen
  When I search for a customer by TIN using "365-98-9906"
  Then I am on the "Member Details" screen

@done
Scenario: Search for Customer - Number entered and Driver's License parameter selected
  Given I am on the "Dashboard" screen
  When I search for a customer by Driver's License using "T 512 734 609 569"
  Then I am on the "Member Details" screen

@done
Scenario: Search for Customer - Number entered and Phone Number parameter selected
  Given I am on the "Dashboard" screen
  When I search for a customer by Phone Number using "313-212-5284"
  Then I am on the "Member Details" screen

@done
Scenario: Search for Customer - Number entered and Account Number parameter selected
  Given I am on the "Dashboard" screen
  When I search for a customer by Account Number using "0010018030"
  Then I am on the "Member Details" screen

@done
Scenario: Verify autoselection of By Account Number and By Name
  Given I am on the "Dashboard" screen
  When I enter "12345" as the search value
  Then "By Account Number" is selected as the search type
  And I enter "Conn" as the search value
  Then "By Name" is selected as the search type
  And I select "By TIN" as the search by
  And I enter "12345" as the search value
  Then "By TIN" is selected as the search type

@done
Scenario: Go to active Member
  Given I am on the "Dashboard" screen
  When I search for a customer by Account Number using "0010018030"
  And I am on the "Member Details" screen
  And I click on the back icon
  And I am on the "Dashboard" screen
  When I select Member Details
  Then I am on the "Member Details" screen
