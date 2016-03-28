require 'page-object'

class FailurePage
  include PageObject

  div(:message)
end