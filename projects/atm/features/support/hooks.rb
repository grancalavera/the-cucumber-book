Before do
  Dir.glob("capybara-*.html") do |filename|
    File.delete(filename)
  end
  TransactionQueue.clear
end
