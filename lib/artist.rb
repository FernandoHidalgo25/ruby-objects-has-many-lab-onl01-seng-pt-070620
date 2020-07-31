
require 'pry'

class Artist
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def add_song(song)
    song.artist = self
  end

  def songs
     Song.all.select {|song| song.artist == self}
  end

  def add_song_by_name(name)
    song = Song.new(name)
    add_song(song)
  end

  def self.song_count
    Song.all.count
  end

end

    @songs = []
    @name = name
  end

  def songs
    @songs
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end
end

