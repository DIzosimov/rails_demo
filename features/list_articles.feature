Feature: List articles on landing page
    As a visitor,
    when I visit the application's landing page,
    I would like to see a list of articles

    Background: 
        Given the following articles exists
        |title               |text                         |
        |A breaking news item|Some breaking action            |
        |Learn Rails 5       |Build awesome rails applications|
        And I am on the landing page

    Scenario: Viewing a list of articles on the application's landing page
        Then I should see "A breaking news item"
        And I should see "Some breaking action"
        And I should see "Learn Rails 5"
        And I should see "Build awesome rails applications"

        

# Background:
#     Given the following user exist:
#         | name | email       | password |
#         | Joe  | joe@doe.com | password |
#     And I visit the landing page
#     And I click "Login"

# Scenario: Logging into my account
#     When I fill in "Email" with "joe@doe.com"
#     And I fill in "Password" with "password"
#     And I click "Log in"
#     Then I should see "Hello, Joe"

# Scenario: Not entering any user data
#     When I fill in "Email" with ""
#     And I fill in "Password" with ""
#     And I click "Log in"
#     Then I should see "Invalid Email or password"
