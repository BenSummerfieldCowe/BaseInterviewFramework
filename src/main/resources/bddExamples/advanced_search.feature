@advancedSearch
Feature: Advanced search
  In order to Find Employment
  As a Jobseeker
  I want to be able to Perform an Advanced Search


  @totaljobs
  Scenario: Successfully perform a basic search on totaljobs with correct fields
    Given I am an anonymous jobseeker
    When I navigate to the "totaljobs" home page
    And I fill in the keyword field with "Automation Test Engineer"
    Then the keyword field should contain "Automation Test Engineer"
    When I fill in the location field with "London"
    Then the location field should contain "London"
    And I select a radius of "0" miles
    When I click on "Search"
    Then I should see search results

  @totaljobs
  Scenario: Successfully perform an advanced search on totaljobs
    Given I am an anonymous jobseeker
    When I navigate to the "totaljobs" home page
    And I fill in the keyword field with "Automation Test Engineer"
    And I fill in the location field with "London"
    And I select a radius of "0" miles
    And I click on "Show more options"
    And I select an "Hourly" rate of "50" pounds
    And I select a "Contract" job type
    And I select a recruiter type of "Agency"
    When I click on "Search"
    Then I should see search results
    And there should "350" results
    When I navigate to the "totaljobs" home page
    And I fill in the keyword field with "Automation Test Engineer"
    And I fill in the location field with "London"
    And I select a radius of "0" miles
    And I click on "Show more options"
    And I select a "Permanent" job type
    Then Then I should see search results

  @caterer
  Scenario: Successfully perform an advanced search on caterer
    Given I am an anonymous jobseeker
    When I navigate to the "caterer" home page
    And I fill in the keyword field with "Head Chef"
    And I fill in the location field with "Manchester"
    And I select a radius of "10" miles
    And I click on "Show more options"
    And I select an "Daily" rate of "200" pounds
    And I select a recruiter type of "Employer"
    When I click on "Search"
    Then I should see search results


  Scenario: Search elements behaving as expected
    Given I am anonymous jobseeker
    And I navigate to the "totaljobs" home page
    And I fill in the keyword field with "Automation Test Engineer"
    And I fill in the location field with "London"
    And I select a radius of "0" miles
    And I click on "Show more options"
    And I select an "Hourly" rate of "50" pounds
    When I click on "Search"
    Then the iframe ".jobHelper" is enabled
    And the element "keywords" has css class "form-control ui-autocomplete-input"
