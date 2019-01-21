require('minitest/autorun')
require('minitest/rg')
require_relative('../Guests')
require_relative('../Rooms')

class TestGuests < MiniTest::Test

  def setup
    @guest1 = Guests.new("Benjamin Grundy", 100,)
    @guest2 = Guests.new("Aaron Wright", 85)

    @guest3 = Guests.new("Nick Redfern", 120)
    @guest4 = Guests.new("Dean Radin", 90)
  end

  def test_does_customer_have_name
    assert_equal("Benjamin Grundy", @guest1.name)
  end

  def test_does_customer_have_cash
    assert_equal(85, @guest2.cash_count)
  end

  def test_remove_cash_from_guest
    @guest1.remove_cash(25)
    assert_equal(75, @guest1.cash_count)
  end

end
