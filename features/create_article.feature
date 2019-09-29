Feature: Create articles
    As a publisher
    In order to add relevant text to my news service
    I would like to be able to create articles

    Background:
        Given the following user exist:
        | name   | email             | password |
        | Joe    | joe@doe.com       | password |
        And I am logged in as "Joe"
        And I am on the landing page
        And I click "All Articles"
        And I click "New Article"

    Scenario: Successfully create an article [Happy Path]
        When I fill in "Title" with "Learning Rails 5"
        And I fill in "Text" with "Excited about learning a new framework"
        And I click "Create Article" 
        Then I should be on "Learning Rails 5" page
        And I should see "Learning Rails 5"
        And I should see "Excited about learning a new framework"

    Scenario: Publisher doesn't enter a title for the article [Sad Path]
        When I fill in "Text" with "Excited about learning a new framework"
        And I click "Create Article" 
        Then I should see "Title can't be blank"

    Scenario: Publisher doesn't enter text for the article [Sad Path]
        When I fill in "Title" with "Learning Rails 5"
        And I click "Create Article" 
        Then I should see "Text can't be blank"