require 'page-object'

class LoginPage
  include PageObject
  include DataMagic

  page_url "file:///#{Dir.pwd}/features/fakewebsite/login.html"

  text_field(:username, name: 'user')
  text_field(:password, name: 'pass')
  button(:login, name: 'login')

  def login_with_valid_credentials
    populate_page_with data_for :login
    self.login
  end

  def login_with_invalid_credentials
    populate_page_with data_for :invalid
    self.login
  end
end