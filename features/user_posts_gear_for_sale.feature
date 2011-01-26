Feature: User posts gear for sale

  In order to get rid of my old gear
  As a user
  I want to post my gear for sale

  @javascript
  Scenario: Posting a new piece of gear
    Given I am on the home page
    When I follow "Post Your Gear"
    Then I should see "What type of gear are you selling?"
    And I should not see "Post Your Gear"
    When I select "Guitar" from "What type of gear are you selling?"
    And I fill in "Make" with "Fender"
    And I fill in "Model" with "Stratocaster"
    And I fill in "Year" with "1967"
    And I fill in "Description" with "Has a few minor cigarette burns, but still plays great."
    And I press "Sell My Gear"
    Then I should be on the home page
    And I should see "For sale: 1967 Fender Stratocaster"
    And I should see "Post Your Gear"
