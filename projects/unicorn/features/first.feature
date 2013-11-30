# unicorn's first feature

Feature: Rendering unicorns

  Scenario: Every new project should render unicorn placeholders for components that have not been implemented yet.

    Given I have defined a new CMS component named 'views/my-view'
    And 'views/my-view' is not defined in the frontend
    When I visit the application's homepage
    Then I should see 1 unicorn placeholder rendered

  Scenario: As a web browser...
