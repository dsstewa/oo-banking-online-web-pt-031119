require 'pry'
class Transfer
  attr_reader :sender, :receiver, :status, :amount
  
  def initialize(sender,receiver, amount)
    #binding.pry
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end
  
  def valid?
    #binding.pry
    @sender.valid? && @receiver.valid? ? true : false
  end
  
end
