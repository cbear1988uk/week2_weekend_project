

class Guests

  attr_reader :name, :cash_count

  def initialize(name, cash_count)
    @name = name
    @cash_count = cash_count

  end

  def remove_cash(amount)
    @cash_count -= amount
  end


end
