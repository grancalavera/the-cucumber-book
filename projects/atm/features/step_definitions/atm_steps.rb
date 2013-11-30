# This is certainly chating...
class Account
  def deposit(amount)
    @balance = amount
  end

  def balance
    @balance
  end
end

# Actual steps
Given /^I have deposited \$(\d+) in my account$/ do |amount|
  my_account = Account.new
  my_account.deposit(amount.to_i)
  my_account.balance.should eq(amount.to_i),
    "Expected the balance to be #{amount} but it was #{my_account.balance}"
end

When /^I request \$(\d+)$/ do |amount|
  pending('Implement cash request')
end

Then /^\$(\d+) should be dispesed$/ do |amount|
  pending('Implement dispensing cash')
end

