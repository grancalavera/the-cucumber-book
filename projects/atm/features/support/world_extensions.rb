# Helper methods: to be mixed up with "World" later on
module KnowsTheUserInterface
  class UserInterface
    include Capybara::DSL
    def withdraw_from(account, amount)
      Sinatra::Application.account = account
      visit '/'
      fill_in 'Amount', :with => amount
      click_button 'Withdraw'
    end
  end
  def my_account
    @my_account ||= Account.create!(:number => "test", :balance => 0)
  end

  def cash_slot
    Sinatra::Application.cash_slot
  end

  def teller
    @teller ||= UserInterface.new
  end
end

# Just before it executes each scenario, Cucumber creates a new object.
# We call this object the World.
# API documentation1 for Cucumber::RbSupport::RbWorld.
# a new world is created for each scenario, so it is destroyed at the end
# of the scenario.
# any instance variables set during one scenario will be destroyed along
# with the world in which they were created when the scenario ends.
World(KnowsTheUserInterface)
