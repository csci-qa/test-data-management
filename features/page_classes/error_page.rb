require 'page-object'

class ErrorPage
  include PageObject

  def message
	self.text
  end

end