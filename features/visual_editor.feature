@ie6-bug  @ie7-bug  @ie8-bug @test2.wikipedia.org @login
Feature: VisualEditor

  Background:
    Given I am logged in

  Scenario: Basic edit
    Given I am at my user page
    When I edit the page with a string
      And I click Save page
      And I click This is a minor edit
      And I click Review your changes
      And I click Return to save form
      And I edit the description of the change
      And I click Save page the second time
    Then Page text should contain the string
