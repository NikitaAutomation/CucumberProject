@Browser
Feature: This feature will will be used to test the login functionality of simplilearn application

  Background: 
    Given I have launched the application
    And I have clicked on login link

  @WIP
  Scenario: Validate the login success scenario
    When I enter username
    And I enter password
    And I click on login button
    Then I should land on homepage

  @Sanity
  Scenario: Validate the login failure scenario
    When I enter username
    And I enter password
    And I click on login button
    Then I should get the error message

  @Sanity
  Scenario: Validate the Login failure scenario using parameters
    When I enter username as "abc@xyz.com"
    And I enter password as "Abc@1234"
    And I click on login button
    Then I should get the error message as "The email or password you have entered is invalid."

  @Regression @Sanity
  Scenario Outline: Validate the Login failure scenario using parameters
    When I enter username as "<UserName>"
    And I enter password as "<Password>"
    And I click on login button
    Then I should get the error message as "<Error>"

    Examples: 
      | UserName    | Password | Error                                              |
      | pqr@xyz.com | Pqr@1234 | The email or password you have entered is invalid. |
      | xyz@abc.com | Xyz@1234 | The email or password you have entered is invalid. |
