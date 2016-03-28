require 'page-object'
require 'data_magic'

class LoginPage
  include PageObject
  include DataMagic

  page_url "file:///#{Dir.pwd}/features/fakewebsite/login.html"

  text_field(:username, name: 'user')
  text_field(:password, name: 'pass')
  button(:login, name: 'login')

  def login_w_valid_credentials
    populate_page_with data_for :valid
    self.login
  end

  def login_w_invalid_credentials
    populate_page_with data_for :invalid
    self.login
  end

end