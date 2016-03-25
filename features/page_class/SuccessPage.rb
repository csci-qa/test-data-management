require 'page-object'

class SuccessPage
  include PageObject

  div(:message, id:'message' )

  end

