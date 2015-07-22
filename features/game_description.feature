Feature: User connection

  Background:
    Given user connected

  Scenario: Start game immediately
    When open game exists
    Then player receives success message that game started
    And units have full hp

  Scenario: Wait for second player connection
    When open game does not exists
    Then create new game
    And user recieved message about waiting

  Scenario: Game starts after opponent connected
    Given player waits for opponent
    When opponent connected
    Then player receives success message that game started