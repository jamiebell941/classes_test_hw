class BankAccount

# attr_reader :holder_name, :balance, :type
# attr_writer :holder_name, :balance, :type
attr_accessor :holder_name, :balance, :type

  def initialize(holder_name, balance, type)
    @holder_name = holder_name
    @balance = balance
    @type = type
  end

  def pay_in(amount)
    @balance += amount
  end

  def pay_monthly_fee()
    if @type == "business"
    @balance -= 50
  elsif @type == "personal"
    @balance -= 10
    end
  end



  def get_holder_name()
    return @holder_name
  end

  def get_balance()
    return @balance
  end

  def get_type()
    return @type
  end

  def set_account_name(name)
    @holder_name = name
  end

def set_balance(num)
  @balance = num
end

def set_type(type)
  @type = type
end

end
