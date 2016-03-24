Feature: Logging into the system

  Scenario: Logging in with a good password
    When I use valid credentials
    Then I will be logged in to the system


  Scenario: Logging in without a password
    When I use invalid credentials
    Then I will not be logged in to the system