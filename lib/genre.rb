require 'pry'

class Genre
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    #@songs = [] #has many songs
    @@all << self
  end

  def self.all
    @@all
  end

  def songs #has many songs
    #binding.pry
    Song.all.select {|song| song.genre == self} #.map did not work...it gave me boolean values. why????
  end

#MAP AND SELECT ARE DIFFERENT! WHAAAAAAA

  def artists #has many artists through songs so call the array or songs for genre and produce the artist
    songs.map {|song| song.artist}
  end

end
