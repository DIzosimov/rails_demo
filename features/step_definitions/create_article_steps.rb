# # Given(/^I am on the landing page$/) do
# #     visit root_path
# # end

# Given("I visit the {string} page") do |landing|
#     visit root_path
# end
  
#   When("I click {string}") do |element|
#     click_link element #Adds article to database and displays
#   end
  
#   When("I fill in {string} with {string}") do |title, titlestring|
#     expect(title).to have_content titlestring # Write code here that turns the phrase above into concrete actions
#   end
  
#   When("I click {string} button") do |title|
#     expect(page).not_to have_content title #Will not allow creating article due to missing title
#   end
  
# #   When("I click {string} button") do |content|
# #     expect(page).not_to have_content content #Will not allow creating article due to missing content
# #   end