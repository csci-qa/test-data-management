require 'page-object'

class FailurePage
  include PageObject

  def message
  	return "Failure"
  end

end