#FailurePage class

require 'page-object'

class FailurePage
  include PageObject

  def notification
    self.text
  end

end