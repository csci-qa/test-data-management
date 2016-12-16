require 'page-object'

class FailurePage
    include PageObject

  def message
    self.text
  end
end