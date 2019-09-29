Feature: Edit an article
As a user
In order to change or update content of my articles
I would like to be able to edit my articles

    Background:
        Given the following user exist:
            | name   | email             | password |
            | Joe    | joe@doe.com       | password |
        And I am logged in as "Joe"
        And I am on the landing page
        And I click "All Articles"
        And I click "New Article"
        And I fill in "Title" with "A breaking news item"
        And I fill in "Text" with "Some breaking action"
        And I click "Create Article"

    Scenario: Successfully editing an article [Happy Path]
        Then I should see "A breaking news item"
        And I should see "Some breaking action"
        And I click "Edit"
        And I fill in "Title" with "Learning Rails 5"
        And I fill in "Text" with "Excited about learning a new framework"
        And I click "Update Article"
        Then I should be on "Learning Rails 5" page
        And I should see "Learning Rails 5"
        And I should see "Excited about learning a new framework"

    Scenario: Unsuccessfully editing title [Sad Path]
        Then I should see "A breaking news item"
        And I should see "Some breaking action"
        And I click "Edit"
        And I fill in "Title" with ""
        And I fill in "Text" with "Excited about learning a new framework"
        And I click "Update Article"
        Then I should see "Title can't be blank"
        And I should see "Title is too short (minimum is 5 characters)"

    Scenario: Unsuccessfully editing text [Sad Path]
        Then I should see "A breaking news item"
        And I should see "Some breaking action"
        And I click "Edit"
        And I fill in "Title" with "Learning Rails 5"
        And I fill in "Text" with ""
        And I click "Update Article"
        Then I should see "Text can't be blank"
        And I should see "Text is too short (minimum is 1 character)"