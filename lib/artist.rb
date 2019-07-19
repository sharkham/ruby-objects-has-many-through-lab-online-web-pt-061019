require 'pry'

class Artist
  @@all = []
  attr_accessor :name, :genres

  def initialize(name)
    @name = name
    @genres = []
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(song_name, genre)
    song = Song.new(song_name, self, genre)
  end

  def songs
    Song.all.select do |s|
      s.artist == self
    end
  end

  def genres
    songs.map do |s|
      s.genre
    end
  end

end
