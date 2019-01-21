require('minitest/autorun')
require('minitest/rg')
require_relative('../Songs')

class TestSongs < MiniTest::Test


  def setup
    @song1 = Song.new("Alpha, Omega", "Architects")
    @song2 = Song.new("Birthplace", "Novo Amor")
    @song3 = Song.new("Face Like Thunder", "The Japanese House")

    @song4 = Song.new("Boys of Summer", "Don Henley")
    @song5 = Song.new("Just Like Heaven", "The Cure")
    @song6 = Song.new("Take on Me", "A ha")
  end

  def test_song_has_name
    assert_equal("Alpha, Omega", @song1.song_name)
  end

  def test_band_has_name
    assert_equal("Novo Amor", @song2.band_name)
  end


end
