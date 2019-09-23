Feature: List articles on landing page
    As a visitor,
    when I visit the application's landing page,
    I would like to see a list of articles

    Scenario: Viewing a list of articles on the application's landing page
        When I am on the landing page
        Then I should see "A breaking news item"
        And I should see "Some breaking action"