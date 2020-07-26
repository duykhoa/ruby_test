module HistoryTracking
  def attr_history(attribute_name)
    define_method "#{attribute_name}_history" do
      instance_variable_get("@#{attribute_name}_history")
    end

    define_method "#{attribute_name}_history<<" do |attribute_value|
      history = instance_variable_get("@#{attribute_name}_history") || []
      instance_variable_set("@#{attribute_name}_history", history << attribute_value)
    end

    define_method "#{attribute_name}" do
      instance_variable_get("@#{attribute_name}")
    end

    define_method "#{attribute_name}=" do |attribute_value|
      instance_variable_set("@#{attribute_name}", attribute_value)
      public_send("#{attribute_name}_history<<", attribute_value)
    end
  end
end

class AtmAccount
  extend HistoryTracking

  attr_history :balance

  def initialize(balance)
    self.balance = balance
  end

  def withdraw(amount)
    self.balance = self.balance - amount
  end
end

account = AtmAccount.new(100)
account.withdraw(10)
account.withdraw(20)

puts account.balance_history.inspect # => [100, 90, 70)

