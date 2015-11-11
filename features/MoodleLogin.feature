Feature: Moodle Example Feature file
  This feature file is an example of connect to a site
  and successfully logging into the site with accepted credntials
  The Moodle Education demo site will be used for this feature


  Scenario Outline: Moodle Log in Outline
    Given I am on the Moodle Sandbox login page
    And I enter "<username>" in the Username field
    And I enter "<password>" in the Password field
    When I click on the Log In button
    Then "<results>" will be displayed

    Examples:
    | username | password | results 							|
    | manager  | sandbox  | You are logged in as Max Manager 	|
    | teacher  | sandbox  | You are logged in as Terri Teacher 						|
    | student  | sandbox  | You are logged in as Sam Student 	|
  
  
