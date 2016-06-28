require "account"
require "date"

describe Account do

  subject(:account) {described_class.new}

  describe "#deposit" do
    context "deposit an amount" do
      it "deposit is empty" do
        account.deposit(0)
        expect(account.balance).to eq(0)
      end

      it "deposit alters the balance" do
        account.deposit(500)
        expect(account.balance).to eq(500)
      end
    end
  end

  describe "#withdraw" do
    context "withdraw an amount" do
      it "withdraws nothing if empty" do
        account.deposit(500)
        account.withdraw(0)
        expect(account.balance).to eq(500)
      end

      it "withdrawing alters the balance" do
        account.deposit(500)
        account.withdraw(200)
        expect(account.balance).to eq(300)
      end
    end
  end

  describe "array_deposits" do
    context "length of array changes" do
      it "length increases with deposits and withdrawls" do
        account.deposit(500)
        account.withdraw(200)
        expect(account.array_deposits.length).to eq(2)
      end
    end
  end
end