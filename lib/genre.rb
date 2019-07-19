class Genre
  @@all = []

  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select do |s|
      s.genre == self
    end
  end

  def artists
    songs.map do |s|
      s.artist
    end 
  end
end
