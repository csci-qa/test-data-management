require 'page-object'

include PageObject::PageFactory

When(/^I use valid credentials$/) do
  visit_page(LoginPage).login_w_valid_credentials
end


Then(/^I will be logged in to the system$/) do
  #message = on_page(SuccessPage).message
  #expect(message).to eq "Success"
end


When(/^I use invalid credentials$/) do
  pending # Write code here that turns the phrase above into concrete actions
end


Then(/^I will not be logged in to the system$/) do
  pending # Write code here that turns the phrase above into concrete actions
end