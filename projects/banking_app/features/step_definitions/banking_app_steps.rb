# Transfers

Given /^I have deposited \$(\d+) in my (\w+) Account/ do |amount, account_type|
  puts 'Deposit $' + amount + ' into ' + account_type + ' Account'
end

When /^I transfer \$(\d+) from my (\w+) Account into my (\w+) Account/ do |amount, from_account, to_account|
  puts 'Transfer $' + amount + ' from ' + from_account + ' Account into ' + to_account + ' Account'
end

Then /^the balance of the (\w+) Account should be \$(\d+)/ do |account_type, balance|
  puts 'The balance of the ' + account_type + ' Account should be $' + balance
end

# Withdrawals

Given /^I have deposited \$(\d+) in my account$/ do |amount|
  Account.new(amount.to_i)
end

When /^I request \$(\d+)$/ do |amount|
  pending('How do we simulate cash being requested?')
end

Then /^\$(\d+) should be dispensed$/ do |amount|
  pending('How do we validate the cash was dispensed')
end
