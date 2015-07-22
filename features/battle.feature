Feature: Players can fight with each other
  Background:
    Given game exists
    And has 2 players
    And units have full health points
    When player chooses attack target
    And chooses defense part
    And hits 'start-fight' button

  Scenario: Player waits after turn
    Given opponent is not ready
    Then player receives wait message

  Scenario:
    Given: player has wait status
    When opponent make a decision
    Then # TODO 5 variants

  Scenario: units die after player's turn
    Given opponent is ready
    Then round initiates
    And player receives "draw" message

  Scenario: player win after his turn
    Given opponent is ready
    Then round initiates
    And player receives "win" message

  Scenario: player lose after his turn
    Given opponent is ready
    Then round initiates
    And player receives "lose" message

  Scenario: Next round starts player's turn
    Given opponent is ready
    Then round initiates
    And player receives status message with units health