require './lib/account.rb'
require './lib/printer.rb'


account = Account.new
printer = Printer.new(account)


 account.deposit(500);
 account.deposit(1500);
 account.withdraw(320);
 account.withdraw(520);

 printer.print_statement
