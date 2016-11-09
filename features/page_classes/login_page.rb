require 'page-object'
require 'faker'

class LoginPage
  include PageObject
  include DataMagic

  page_url "file:///#{Dir.pwd}/features/fakewebsite/login.html"

  text_field(:username, name: 'user')
  text_field(:password, name: 'pass')
  button(:login, name: 'login')

  def populate_page
    populate_page_with data_for :my_page
  end

  def login_with_valid_credentials
    self.username = "Bob"
    self.password = "password"
    self.login
  end

  def login_with_invalid_credentials
    self.username = Faker::Name.first_name
    self.password = nil
    self.login
  end
end
