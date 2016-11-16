require 'page-object'

class FailurePage
  include PageObject

  def message
    self.text #add other stuff?
  end

end