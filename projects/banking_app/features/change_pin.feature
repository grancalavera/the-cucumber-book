Feature: Change Pin

  In order to be able to change it to something they can easily remember,
  customers with new bank cards need to be able to change their PIN using
  the ATM.

  Background: Insert a newly issued card and sign in

    Whenever the bank issues new cards to customers, they are supplied with
    a Personal Identification Number (PIN) that is randomly generated by
    the system.

    Given I have been issued a new card
    And I insert the card, entering the correct PIN
    When I choose "Change PIN" from the menu

  Scenario: Change PIN successfully
    And I change the PIN to 9876
    Then the system should remember my PIN is now 9876

  Scenario: Try to change PIN to the same as before
    And I try to change the PIN to the original PIN
    Then I should see a warning message
    And the system should not have changed my PIN
