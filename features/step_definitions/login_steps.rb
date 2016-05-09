require 'page-object'

include PageObject::PageFactory

When(/^I use valid credentials$/) do
  visit_page(LoginPage).login_with_valid_credentials
end


Then(/^I will be logged into the system$/) do
  message = on_page(SuccessPage).message
  expect(message).to eq "Success"
end


When(/^I do not use a password$/) do
  pending # Write code here that turns the phrase above into concrete actions
  teller = Teller.new
	teller.withdraw_from(@my_account, amount)
end


Then(/^I will not be logged into the system$/) do
  pending # Write code here that turns the phrase above into concrete actions
  cash_slot.contents.should == amount
end