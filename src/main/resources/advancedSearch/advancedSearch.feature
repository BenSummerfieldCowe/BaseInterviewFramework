Feature: Functionality of the advanced search

  Scenario: Results displayed for advanced search
    Given I am on the Totaljobs homepage
    When I make a search with details
    Then I am shown job results
