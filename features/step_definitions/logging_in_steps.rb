require 'page-object'

include PageObject::PageFactory


When(/^I use valid credentials$/) do
 visit_page(LoginPage).login_with_valid_credentials
  ## we are visiting the login page and calling the login with vaild credentials method
end


Then(/^I will be logged into the system$/) do
  message = on_page(SuccessPage).message
  expect(message).to eq "Success"
end


When(/^I use invalid credentials$/) do
  pending # Write code here that turns the phrase above into concrete actions
end


Then(/^I will not be logged into the system$/) do
  pending # Write code here that turns the phrase above into concrete actions
end
