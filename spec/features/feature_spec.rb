require 'spec_helper'

describe 'Bank' do
  context 'Transaction' do
    let(:transaction) { Transaction.new }
    let(:my_account) { Account.new }


    before(:each) do
      def sum_in_pounds(sum_in_pounds)
        Money.new((sum_in_pounds*100), "GBP")
      end

      it 'can handle a deposit' do
        my_account.deposit(sum_in_pounds(150.00))
        expect(my_account.balance).to eq(sum_in_pounds(150))
      end

    end
  end
end
