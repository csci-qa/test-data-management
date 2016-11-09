require 'page-object'

class SuccessPage
  include PageObject

  def message
    self.text
  end

end