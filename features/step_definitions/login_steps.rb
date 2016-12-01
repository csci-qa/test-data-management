require 'page-object'

include PageObject::PageFactory

When(/^I use valid credentials$/) do
  visit_page(LoginPage).login_with_valid_credentials
end


Then(/^I will be logged into the system$/) do
  message = on_page(SuccessPage).message
  expect(message).to eq "Success!"
end


When(/^I do not use a password$/) do
  visit_page(LoginPage).login_without_password
end


Then(/^I will not be logged into the system$/) do
  message = on_page(ErrorPage).message
  expect(message).to eq "Need Password!"
end
