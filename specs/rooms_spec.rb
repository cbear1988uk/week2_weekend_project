require('minitest/autorun')
require('minitest/rg')
require_relative('../Rooms')
require_relative('../Guests')
require_relative('../Songs')

class TestRooms < MiniTest::Test

  def setup
    @song1 = Song.new("Alpha, Omega", "Architects")
    @song2 = Song.new("Birthplace", "Novo Amor")
    @song3 = Song.new("Face Like Thunder", "The Japanese House")
    @song4 = Song.new("Boys of Summer", "Don Henley")
    @song5 = Song.new("Just Like Heaven", "The Cure")
    @song6 = Song.new("Take on Me", "Ah-ha")

    @songs = [@song1, @song2, @song3, @song4, @song5, @song6]

    @guest1 = Guests.new("Benjamin Grundy", 100)
    @guest2 = Guests.new("Aaron Wright", 85)
    @guest3 = Guests.new("Nick Redfern", 120)
    @guest4 = Guests.new("Dean Radin", 90)

    @room1 = Rooms.new("Contemporary Room", [@song1, @song2, @song3], 100)
    @room2 = Rooms.new("80's Room", [@song4, @song5, @song6], 100)

    @rooms = [@room1, @room2]
  end

  def test_does_room_have_songs
    assert_equal(3, @room1.count_songs)
  end

  def test_does_room_have_space
    assert_equal(2, @room1.space)
  end

  def test_does_room_have_cash
    assert_equal(100, @room1.cash)
  end

  def test_add_cash_to_room
    @room1.add_cash(25)
    assert_equal(125, @room1.cash)
  end

  def test_remove_cash_from_guest
    @room1.add_cash(25)
    @guest1.remove_cash(25)
    assert_equal(125, @room1.cash)
    assert_equal(75, @guest1.cash_count)
  end

  

end
