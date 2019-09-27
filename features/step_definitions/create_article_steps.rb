When("I click {string}") do |element|
  click_on element
end

When("I fill in {string} with {string}") do |field, text|
  fill_in field, with: text
end

Then("I should be on {string} page") do |string|
   article = Article.find_by(title: string)
   expect(current_path).to eq article_path(article)
end