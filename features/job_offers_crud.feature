Feature: Job Offers CRUD
  In order to get employees
  As a job offerer
  I want to manage my offers

  Background:
  	Given I am logged in as job offerer

  Scenario: Create new offer
    When I create a new offer with "Programmer vacancy" as the title
    Then I should see a offer created confirmation message
    And I should see "Programmer vacancy" in my offers list

  Scenario: Create new offer with experience
    When I create a new offer with "Programmer vacancy" as the title and 2 as the experience
    Then I should see a offer created confirmation message
    And I should see "Programmer vacancy" and 2 in my offers list

  Scenario: Create new offer with cero experience
    When I create a new offer with "Programmer vacancy" as the title and 0 as the experience
    Then I should see a offer created confirmation message 
    And I should see "Programmer vacancy Not specified" in my offers list

  Scenario: Create new offer with only experience
    When I create a new offer with no title and 2 as the experience
    Then I should not see a offer created confirmation message

  Scenario: Update offer
    Given I have "Programmer vacancy" offer in my offers list
    When I change the title to "Programmer vacancy!!!"
    Then I should see a offer updated confirmation message
    And I should see "Programmer vacancy!!!" in my offers list

  Scenario: Delete offer
    Given I have "Programmer vacancy" offer in my offers list
    When I delete it
    Then I should see a offer deleted confirmation message
    And I should not see "Programmer vacancy!!!" in my offers list

