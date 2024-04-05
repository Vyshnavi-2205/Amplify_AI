Feature: Login Functionality
  As a user
  I want to be able to login to the Amazon.in website
  So that I can access my account and perform actions

  Scenario: Successful login
    Given I am on the Amazon.in homepage
    When I click on the Sign In button
    And I enter valid email and password
    And I click on the Sign In button
    Then I should be logged in to my account

  Scenario: Invalid login
    Given I am on the Amazon.in homepage
    When I click on the Sign In button
    And I enter invalid email and password
    And I click on the Sign In button
    Then I should see an error message