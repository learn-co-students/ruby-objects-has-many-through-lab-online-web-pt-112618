require 'pry'

class Artist
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @songs = []
  end

  def self.all
    @@all
  end

  def new_song(name, genre) #new song associated with artist #this error didnt pass until I did the song method
    song = Song.new(name, self, genre)
    @songs << song
    song
  end

  def songs # this is the same as calling songs in the attribute acccessor :songs
    @songs
  end

  def genres #it wants me to iterate over songs array
    #binding.pry
    @songs.map {|song| song.genre}
  end









end
