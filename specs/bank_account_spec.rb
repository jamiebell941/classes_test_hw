require('minitest/autorun')
require('minitest/reporters')
require_relative('../bank_account')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new
class TestBankAccount < MiniTest::Test
  def test_get_holder_name()
    bank_account = BankAccount.new("Chris", 1000, "business")
    assert_equal("Chris", bank_account.holder_name())
  end

  def test_get_balance()
    bank_account = BankAccount.new("Chris", 1000, "business")
    assert_equal(1000, bank_account.balance())
  end

  def test_get_type()
    bank_account = BankAccount.new("Chris", 1000, "business")
    assert_equal("business", bank_account.type())
  end

  def test_set_account_name()
    bank_account = BankAccount.new("Chris", 1000, "business")
    bank_account.holder_name = "Keith"
    assert_equal("Keith", bank_account.holder_name())
  end

  def test_set_balance()
    bank_account = BankAccount.new("Chris", 1000, "business")
    bank_account.balance = 1200
    assert_equal(1200, bank_account.balance())
  end

  def test_set_type()
      bank_account = BankAccount.new("Chris", 1000, "business")
      bank_account.type = "personal"
      assert_equal("personal", bank_account.type())
    end

  def test_pay_into_account()
    bank_account = BankAccount.new("Chris", 1000, "business")
    bank_account.pay_in(1000)
    assert_equal(2000, bank_account.balance())
  end
# [Task:] Make setters for the value and type.
def test_pay_monthly_fee__business
bank_account = BankAccount.new("Chris", 1000, "business")
bank_account.pay_monthly_fee()
assert_equal(950, bank_account.balance())

end
def test_pay_monthly_fee__personal
  bank_account = BankAccount.new("Chris", 1000, "personal")
  bank_account.pay_monthly_fee()
  assert_equal(990, bank_account.balance())
end

end
# [Task:] Write getters for the balance and the type of account, with tests first.
