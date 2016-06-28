require "date"

class Account

  attr_accessor :array_deposits
  attr_reader :balance

 	def initialize
  	@array_deposits = Array.new
  	@balance = 0
  end

  def deposit(credit)
    account_statement(credit, @balance += credit, 'credit')
  end

  def withdraw(debit)
 	  account_statement(debit, @balance -= debit)
  end

  private

  def account_statement(amount, balance, val = 'debit')
    if val == 'credit'
 	    array_deposits.push('date'=> date_format,  'credit'=> amount, 'nil'=>nil, 'balance' => balance)
 	  else
 	  	array_deposits.push('date'=> date_format, 'nil'=>nil, 'debit'=> amount,  'balance' => balance)
 	  end
  end

  def date_format
  	Time.now.strftime("%d-%m-%Y")
  end
end