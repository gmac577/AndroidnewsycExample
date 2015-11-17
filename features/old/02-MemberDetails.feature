@memberdetails
Feature: Member Details
  As a user
  I want to be able to access all of the member's details in one screen 

Background: Successful Login
  Given I log in successfully

@done
Scenario:  Verify Member Details elements
  Given I am on the "Dashboard" screen
  Then I search for a customer by Name using "Zockheem, Diedre"
  And I am on the "Member Details" screen
  When I select Transactions
  Then I am on the "Transactions" screen
  And I click on the Home icon
  When I select Documents
  Then I am on the "Documents" screen
  And I click on the Home icon
  When I select Cards
  Then I am on the "Card Records" screen
  And I click on the Home icon
  When I select Scripts
  Then I am on the "Available Scripts" modal
  And I touch done
  When I select Interactions
  Then I am on the "Interactions" screen
  And I click on the Home icon
  When I select Relationship Tree
  Then I am on the "Relationship Tree" screen
  And I click on the Home icon
  When I select MVI eView
  Then I am on the "MVI View" screen
  And I click on the Home icon
  When I select Fee Review
  Then I am on the "Fee Review" screen
  And I click on the Home icon
  When I select Account History
  Then I am on the "Account History" screen
  And I click on the Home icon
  When I select Edit Profile
  Then I am on the "Edit Profile" screen
  And I click on the Home icon
  When I select the email address
  Then I am on the "Edit Contact Info" screen
  And the category "Personal email" is selected
  And I click on the Home icon
  When I select the home phone
  Then I am on the "Edit Contact Info" screen
  And the category "Home phone" is selected
  And I click on the Home icon
  When I select the cell phone
  Then I am on the "Insert Contact Info" screen
  And the category "Personal cell" is selected
  And I click on the Home icon
  When I select the work phone
  Then I am on the "Edit Contact Info" screen
  And the category "Business phone" is selected
  And I click on the Home icon
  When I select EMEC Alert
  Then I am on the "Update EMEC Note" screen
  And I click on the Home icon
  Then I select the refresh spinner

@done
Scenario:  Verify Close tab alert
  Given I am on the "Dashboard" screen
  Then I search for a customer by Name using "Zockheem, Diedre"
  And I am on the "Member Details" screen
  When I select the "first" close tab
  Then I am presented with the alert message "Please Confirm - Are you sure you want to remove this member?"

@done
Scenario:  Verify maximum tabs alert
  Given I am on the "Dashboard" screen
  Then I search for a customer by Name using "Zockheem, Diedre"
  And I am on the "Member Details" screen
  When I click on the back icon
  Then I am on the "Dashboard" screen
  And I search for a customer by Name using "Conn, Mel"
  Then I am on the "Member Details" screen
  When I click on the back icon
  Then I am on the "Dashboard" screen
  And I search for a customer by Name using "Zockheem, Mark"
  When I click on the back icon
  Then I am on the "Dashboard" screen
  And I search for a customer by Name using "Ziegler, Keva"
  When I click on the back icon
  Then I am on the "Dashboard" screen
  And I search for a customer by Name using "Ziegler, Ronald"
  Then I am presented with the alert message "Limit Reached - Please close one or more tabs before adding another one."
