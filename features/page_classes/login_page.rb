require 'page-object'
require 'data_magic'

class LoginPage
  include PageObject
  include DataMagic

  page_url "file:///#{Dir.pwd}/features/fakewebsite/login.html"

  text_field(:username, name: 'user')
  text_field(:password, name: 'pass')
  button(:login, name: 'login')

  def login_with_valid_credentials
    populate_page_with data_for :success_page
    # self.username = "Bob"
    # self.password = "password"
    self.login
  end
  
  def login_without_password
    populate_page_with data_for :fail_page
  	# self.username = "Duane"
  	# self.password = nil
  	self.login
  end
  	

	  	

end