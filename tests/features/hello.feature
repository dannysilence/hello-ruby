# features/hello.feature

Feature: Hello Sample

  Rule: This is a rule
    Example: A passing example
      Given this will pass
      When I do an action
      Then some results should be there

    Example: A failing example
      Given this will fail
      When I do an action
      Then some results should be there

  Scenario: this is a scenario
    Given this will pass
    When I do an action
    Then some results should be there

  Scenario Outline: this is a scenario
    Given this will pass <n> times
    When I do an action <m> times
    Then some results should be there for <k> times

    Examples:
        | n | m | k  |
        | 1 | 1 |  1 |
        | 2 | 2 |  4 |
        | 3 | 3 |  9 |
        | 4 | 4 | 16 |
        | 5 | 6 | 25 |