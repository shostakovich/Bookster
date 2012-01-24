Feature: Registration
  As a Bookowner
  I want to create a user-account
  In Order to use user-specific features

  Scenario: Sign up with valid credentials
    Given I am on the registration page
    When  I fill in "Nickname" with "Testuser"
      And I fill in "Email" with "heinz@example.com"
      And I fill in "Password" with "123_pass"
      And I press "Create Account"
    Then I should be on the registration done page
      And I should see "Your account has been created"