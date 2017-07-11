require 'spec_helper'

describe Transactions do
  subject(:transactions) { described_class.new}

  context 'Basic transactions' do

    it 'can deposit money' do
      transactions.deposit(Money.new(2000, "GBP"))
      expect(transactions.tracker).to eq(Money.new(2000, "GBP"))
    end

    it 'can withdraw money' do
      transactions.deposit(Money.new(2000, "GBP"))
      transactions.withdraw(Money.new(1500, "GBP"))
      expect(transactions.tracker).to eq(Money.new(500, "GBP"))
    end

  end
end
