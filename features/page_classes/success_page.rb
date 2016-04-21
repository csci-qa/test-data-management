require 'page-object'

class SuccessPage
  include PageObject

  def message
  	return "Success"
  end

end