class Bank
  attr_reader :name, :accounts # getter

  def initialize(name)
    @name = name
    @accounts = Hash.new 0 # setting 0 as a default instead of nil.
  end

  def create_account(account_name, amount)
    @accounts[account_name] = amount
  end

  def deposit(account_name, amount)
    @accounts[account_name] += amount
  end

  def withdraw(account_name, amount)
    @accounts[account_name] -= amount unless amount > balance(account_name)
  end

  def balance(account_name)
    @accounts[account_name]
  end
end
