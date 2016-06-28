require "account"

describe Account do
	account = Account.new
  describe "#deposit" do
    context "add amount" do
      it "returns amount and date in hash" do
        account.deposit(500)
        expect(account.deposit(500)).to eq(500)
      end
    end
  end
end      