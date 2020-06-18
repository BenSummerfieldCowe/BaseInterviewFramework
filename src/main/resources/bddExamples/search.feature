Feature: Keyword search
  In order to find employment
  As a jobseeker
  I want to be able to perform a keyword search

  Scenario: Successfully perform a keyword search
    Given I am an anonymous jobseeker
    When I navigate to the "totaljobs" home page
    And I fill in the keyword field with "Automation Test Engineer"
    When I click on "Search"
    Then I should see search results

  Scenario: Successfully perform a keyword search for developer
    Given I am an anonymous jobseeker
    When I navigate to the "totaljobs" home page
    And I fill in the keyword field with "Developer"
    When I click on "Search"
    And I should see search results

  Scenario: Successfully perform a keyword search for developer
    Given I am an anonymous jobseeker
    When I navigate to the "totaljobs" home page
    And I fill in the keyword field with "Test Manager"
    When I click on "Search"
    Then I should see search results

  Scenario: Succesfully perform a location search
    Given I am an anonymous jobseeker
    And I am on the "totaljobs" home page
    When I make a serch with location "Havant"
    Then I should see search results
