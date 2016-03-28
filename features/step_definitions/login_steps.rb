require 'page-object'

include PageObject::PageFactory

When(/^I use valid credentials$/) do
  visit_page(LoginPage).login_w_valid_credentials
end


Then(/^I will be logged in to the system$/) do
  message = on_page(SuccessPage).message
  expect(message).to eq 'Success'
end


When(/^I use invalid credentials$/) do
  visit_page(LoginPage).login_w_invalid_credentials
end


Then(/^I will not be logged in to the system$/) do
  message = on_page(FailurePage).message
  expect(message).to eq 'Failure'
end