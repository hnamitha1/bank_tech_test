require "date"

class Account

attr_accessor :array_deposits

 def initialize
   @array_deposits = Array.new
   @balance = 0
 end

 def deposit(amount)
   @array_deposits.push('date'=> Time.now.strftime("%d-%m-%Y"), 'amount'=> amount)
 end

 def withdraw(amount)
 end

end