require 'page-object'

class SuccessPage
  include PageObject

  def message
	
  end
	def credit(amount)
	@balance = amount
end
def balance
	@balance
end
def debit(amount)
	@balance -= amount
end
end