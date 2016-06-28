require_relative 'account'

class Printer

  attr_reader :account

	def initialize(account = Account.new)
		@account = account
	end

	def print_statement
		puts "  date    ||credit || debit || balance"
		@account.array_deposits.each do |array_deposit|
  		print "#{array_deposit['date']} ||" " #{array_deposit['credit']} ||" " #{array_deposit['debit']} ||"  " #{array_deposit['balance']}" 
  		puts
  	end	
	end
end

