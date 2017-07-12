class Account

  attr_reader :balance

  def initialize
    @balance = Money.new(0, 'GBP')
  end

  def deposit(money)
    @balance += money
  end

  def withdraw(money)
    @balance -= money
  end

  def sum_in_pounds(sum)
    Money.new((sum*100), "GBP")
  end

end
