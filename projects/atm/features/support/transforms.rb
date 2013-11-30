# Whenever Cucumber matches a step definition, it looks for "Transform" method
# calls, which can be stored as well
CAPTURE_CASH_AMOUNT = Transform /^\$(\d+)/ do |digits|
  digits.to_i
end
