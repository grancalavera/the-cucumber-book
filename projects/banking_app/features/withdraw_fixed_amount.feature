Feature: Withdraw fixed amount

  The "Withdraw Cash" menu contains several fixed amounts to speed up
  transactions for users.

  Scenario Outline: Withdraw fixed amount
    Given I have <Balance> in my account
    When I choose to withdraw the fixed amount of <Withdrawal>
    Then I should <Outcome>
    And the balance of my account should be <Remaining>

    Examples: Successful withdrawal
      | Balance | Withdrawal | Remaining | Outcome              |
      | $500    | $50        | $450      | receive $50 cash     |
      | $500    | $100       | $400      | receive $100 cash    |
      | $500    | $200       | $300      | receive $200 cash    |

    Examples: Attempt to withdraw too much
      | Balance | Withdrawal | Remaining | Outcome              |
      | $100    | $200       | $100      | see an error message |
      | $0      | $50        | $0        | see an error message |

    Scenario: Send SMS notification when the user's card is retained
      Given I have entered my PIN incorrectly for the third time
      Then the ATM retains my card
      And I receive the following SMS:
        """
        Dear Mr Calavera:

        We have your card because you or someone else entered your PIN code incorrectly for a third time.

        Sincerely,
        Your pals at the bank
        """
      And my card should be disabled
