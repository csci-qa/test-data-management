#This page details credentials to be entered into the fields

require 'page-object'

class LoginPage
  include PageObject

  page_url "file:///#{Dir.pwd}/features/fakewebsite/login.html"

  text_field(:username, name: 'user')
  text_field(:password, name: 'pass')
  button(:login, name: 'login')

  def login_with_valid_credentials
    self.username = "Bob"
    self.password = "password"
    self.login
  end

  def login_with_invalid_credentials
    self.username = "Bob"
    self.password = ""
    self.login
  end

end