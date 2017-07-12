require 'spec_helper'

describe Account do
  subject(:account) { described_class.new }

  before(:each) do
    def sum_in_pounds(sum)
      Money.new((sum*100), "GBP")
    end
  end

  it 'has a deposit method' do
    expect(account).to respond_to(:deposit)
  end

  it 'stores money in #balance' do
    account.deposit(sum_in_pounds(1500))
    expect(account.balance).to eq(sum_in_pounds(1500))
  end

  it 'has withdraw method' do
    expect(account).to respond_to(:withdraw)
  end

  it 'deducts money from balance up withdrawal' do
    account.withdraw(sum_in_pounds(500))
    expect(account.balance).to eq(sum_in_pounds(-500))
  end

end
