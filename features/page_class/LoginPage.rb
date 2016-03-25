require 'page-object'
require 'data_magic'

class LoginPage
  include PageObject
  include DataMagic

##need to find current location type dir.pwd

  page_url "file:///#{Dir.pwd}/features/fakewebsite/login.html"

  text_field(:username, name: 'user')
  text_field(:password, name: 'pass')
  button(:login, name: 'login')




  def login_with_valid_credentials
    populate_page_with data_for :validcred
    self.login
  end

  def login_with_invalid_credentials

    populate_page_with data_for :invalidcred
    self.login
  end

end