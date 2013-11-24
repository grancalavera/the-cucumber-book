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
  pending #Account.new(amount.to_i)
end

When /^I request \$(\d+)$/ do |amount|
  pending('How do we simulate cash being requested?')
end

Then /^\$(\d+) should be dispensed$/ do |amount|
  pending('How do we validate the cash was dispensed')
end


# Change PIN


Given(/^I have been issued a new card$/) do
  pending # express the regexp above with the code you wish you had
end

Given(/^I insert the card, entering the correct PIN$/) do
  pending # express the regexp above with the code you wish you had
end

When(/^I choose "(.*?)" from the menu$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

When(/^I change the PIN to (\d+)$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

Then(/^the system should remember my PIN is now (\d+)$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

When(/^I try to change the PIN to the original PIN$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I should see a warning message$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^the system should not have changed my PIN$/) do
  pending # express the regexp above with the code you wish you had
end

# Withdrawals: fixed amounts

Given(/^I have \$(\d+) in my account$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

When(/^I choose to withdraw the fixed amount of \$(\d+)$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

Then(/^I should receive \$(\d+) cash$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

Then(/^the balance of my account should be \$(\d+)$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

Then(/^I should see an error message$/) do
  pending # express the regexp above with the code you wish you had
end

# Using strings

Given(/^I have entered my PIN incorrectly for the third time$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^the ATM retains my card$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I receive the following SMS:$/) do |string|
  pending # express the regexp above with the code you wish you had
end

Then(/^my card should be disabled$/) do
  pending # express the regexp above with the code you wish you had
end
