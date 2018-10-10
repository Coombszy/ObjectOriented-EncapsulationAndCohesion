class Bank
  def initialize
     @accounts = Array.new
  end
  def get_balance(account_number)
    return "No such account" if @accounts[account_number] == nil
    @accounts[account_number].value
  end
  def credit_account(date, amount)
    @accounts.push(Account.new(date, amount, "credit"))
  end
  def debit_account(date, amount)
    @accounts.push(Account.new(date, amount, "debits"))
  end
  def print_statements(account_number)
    @accounts[account_number].transactions
  end
  def deposit_to_account(account_number, amount)
    @accounts[account_number].deposit(amount)
  end
end

class Account
  attr_reader :value
  attr_reader :date
  attr_reader :account_type
  attr_reader :transactions
  def initialize(date_, amount_, account_type_)
    @value = amount_
    @date = date_
    @account_type = account_type_
    @transactions = Array.new
    @transactions.push(Time.now.to_s + "Account started!")
  end
  def deposit(amount)
    @value += amount
    @transactions.push(Time.now.to_s + " : " + @value.to_s)
  end
end