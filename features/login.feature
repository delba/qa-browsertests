Feature: Log in

  Background:
    Given I am at test2 Log in page

  Scenario: Go to Log in page
    Then Log in page should open
      And Username element should be there
      And Password element should be there
      And Log in element should be there

  Scenario: Log in without entering credentials
    When I log in without entering credentials
    Then Log in page should open
      And feedback should be Login error\nYou have not specified a valid username.

  Scenario: Log in without entering password
    When I log in without entering password
    Then Log in page should open
      And feedback should be Login error\nPassword entered was blank. Please try again.

  Scenario: Log in with incorrect username
    When I log in with incorrect username
    Then Log in page should open
    And feedback should be Login error\nThere is no user by the name \"incorrect username\". Usernames are case sensitive. Check your spelling, or create a new account.

  Scenario: Log in with incorrect password
    When I log in with incorrect password
    Then Log in page should open
      And feedback should be Login error\nIncorrect password entered. Please try again.

  Scenario: Log in with valid credentials
    When Log in as Uploadwizardtest
    Then Log in page should open
      And there should be text You are now logged in to Wikipedia as "Uploadwizardtest".
