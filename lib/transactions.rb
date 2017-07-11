class Transactions

  attr_reader :tracker

  def initialize
    @tracker = 0
  end

  def deposit(credit)
    @tracker += credit
  end

  def withdraw(debit)
    @tracker -= debit
  end
end
