Feature: Registration
  As a Bookowner
  I want to create a user-account
  In Order to use user-specific features

  Scenario: Sign up with valid credentials
    Given I am on the signup page
    When I fill in heinz@example.com into the email
      And I fill in "123_pass" into the password
      And I fill in 123_pass into the password_confirmation
    Then I should be redirected to the registration confirmation page
      And I should see "Registration successfull"