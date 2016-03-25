require 'page-object'

class FailPage
  include PageObject

  div(:message, id:'message' )

end

