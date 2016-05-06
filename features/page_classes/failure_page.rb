require 'page-object'

class FailurePage
  include PageObject

  def message
  	return @broswer.text
  end

end