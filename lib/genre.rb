require 'pry'
class Genre 
  
  attr_accessor :name 
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self
  end
  
  def songs 
    Song.all.select {|song_info| song_info.genre == self}
  end 
  
  def self.all
    @@all
  end
  
  def artists 
    songs.map {|song| song.artist}
  end 
  
end 