class BankAccount
  def initialize(holder, initial_value) # holder = titular
    @holder = holder
    @value = initial_value
  end

  def transfer(other_account, value)
    if balance >= value            
      debit(value)
      other_account.deposit(value)
      puts "TranferĂȘncia de #{value} realizada com sucesso!"
    else
      puts "TransferĂȘncia de #{value} falhou, saldo insuficiente!"
    end
  end

  def balance # saldo
    @value
  end    

  private

  def debit(value)
    @value -= value
  end    

  protected

  def deposit(value)
    @value += value
  end
end