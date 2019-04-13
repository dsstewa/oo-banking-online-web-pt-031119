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
    @sender.valid? && @receiver.valid? ? true : false
    
  end
  
  def execute_transaction
     if @status == "pending" && self.valid? 
         @sender.balance -= @amount
         @receiver.balance += @amount
         @status = "complete"
         "Transaction rejected. Please check your account balance."
      else 
        @status = "rejected"
        "Transaction rejected. Please check your account balance."
   end
  end
  
  
end
