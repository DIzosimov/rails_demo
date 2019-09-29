Feature: List articles on landing page
    As a visitor,
    when I visit the application's landing page,
    I would like to see a list of articles

    Background: 
        Given the following articles exists
            | title                | text                             |
            | A breaking news item | Some breaking action             |
            | Learn Rails 5        | Build awesome rails applications |
        Given the following user exist:
            | name   | email             | password |
            | Joe    | joe@doe.com       | password |
        And I am logged in as "Joe"
        And I am on the landing page
        And I click "All Articles"

    Scenario: Viewing a list of articles on the application's landing page
        Then I should see "A breaking news item"
        And I should see "Some breaking action"
        And I should see "Learn Rails 5"
        And I should see "Build awesome rails applications"

        

