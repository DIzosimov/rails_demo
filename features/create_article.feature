Feature: Create articles
    As a publisher
    In order to add relevant content to my news service
    I would like to be able to create articles

    Background:
        Given I visit the "landing" page
        When I click "New Article" link

    Scenario: Successfully create an article [Happy Path]
        When I fill in "Title" with "Learning Rails 5"
        And I fill in "Text" with "Excited about learning a new framework"
        And I click "Save Article" link
        Then I should see "Learning Rails 5"
        And I should see "Excited about learning a new framework"

#     Scenario: Publisher doesn't enter a title for the article [Sad Path]
#         When I fill in "Content" with "Excited about learning a new framework"
#         And I click "Save Article" link
#         Then I should see "Title can't be blank"

# Scenario: Logging into my account
#     When I fill in "Email" with "joe@doe.com"
#     And I fill in "Password" with "password"
#     And I click "Log in"
#     Then I should see "Hello, Joe"
#     # Scenario: Publisher doesn't enter content for the article [Sad Path]
#     #     When I fill in "Title" with "Learning Rails 5"
#     #     And I click "Create Article" button
#     #     Then I should see "Content can't be blank"
