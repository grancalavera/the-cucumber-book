# Helper methods: to be mixed up with "World" later on
module KnowsTheDomain
  def my_account
    @my_account ||= Account.new
  end

  def cash_slot
    @cash_slot ||= CashSlot.new
  end

  def teller
    @teller ||= Teller.new(cash_slot)
  end
end

# Just before it executes each scenario, Cucumber creates a new object.
# We call this object the World.
# API documentation1 for Cucumber::RbSupport::RbWorld.
# a new world is created for each scenario, so it is destroyed at the end
# of the scenario.
# any instance variables set during one scenario will be destroyed along
# with the world in which they were created when the scenario ends.
World(KnowsTheDomain)
