Feature: Logging into the system

  Scenario: Logging in with a good password
    When I use valid credentials
    Then I will be logged into the system

  Scenario: Logging in without a password
    When I do not use a password
    Then I will not be logged into the system