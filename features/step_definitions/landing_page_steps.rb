Given("I am on the landing page") do
    visit root_path
end

And("I am on the articles page") do
    visit articles_path
end

# Then(/^I should see "([^"]*)"$/) do |text|
#     expect(page).to have_content text
# end

Then("I should see {string}") do |text|
    expect(page).to have_content text
end

Given(/^the following articles exists$/) do |table|
    table.hashes.each do |hash|
        Article.create!(hash)
    end
end

