require 'page-object'

class SuccessPage
  include PageObject

  def message
  	return @browser.text
  end

end