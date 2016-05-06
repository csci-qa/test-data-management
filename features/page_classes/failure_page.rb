require 'page-object'

class FailurePage
  include PageObject

  def message
  	return @browser.text
  end

end