Feature: Accounts

  Scenario: Transfer funds from savings into checking account

    Given I have deposited $10 in my Cheking Account
    And I have deposited $500 in my Savings Account
    When I transfer $500 from my Savings Account into my Cheking Account
    Then the balance of the Cheking Account should be $510
    And the balance of the Savings Account should be $0
