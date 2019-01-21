
class Rooms

  attr_reader :genre, :songs, :capacity, :cash

  def initialize(room_name, songs, cash)
    @room_name = room_name
    @songs = songs
    @capacity = 2
    @cash = cash
  end

  def count_songs
    return @songs.count
  end

  def space
    return @capacity
  end

  def add_cash(amount)
    @cash += amount
  end

  def remove_cash(amount)
    @cash -= amount
  end


end
