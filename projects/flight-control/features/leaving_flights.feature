Feature: Leaving Flights

  Scenario Outline: Several flights are leaving today

    Given the flight <flight> is leaving today

    Examples:
      | flight  |
      | EZY4567 |
      | C038    |
      | BA01618 |
