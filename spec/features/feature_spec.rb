require 'spec_helper'

describe "Bank" do
  context 'Transactions' do
    it 'let me deposit and withdraw funds' do
      transactions.deposit(Money.new(100000, "GBP"))
      transactions.withdraw(Money.new(20000, "GBP"))
      transactions.deposit(Money.new(30000, "GBP"))
      balance = transactions.log[3]
      expect(balance).to eq (Money.new(150000, "GBP"))
    end
  end
end
