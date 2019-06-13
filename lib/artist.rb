require "pry"

class Artist 
  attr_accessor :name 
  @@all = []
  
  def initialize(name)
    @name = name 
    @songs = []
  end 
  
  def self.find_or_create_by_name(name)
    @@all.find {|p| p.name == name } || self.new(name).tap {|artist| artist.save}
  end 
  
 # self.new(name).tap {|artist| artist.save}
 
  def add_song(song)
    @songs << song
  end 
  
  def songs 
    @songs 
  end 
  
  
  def save 
    @@all << self 
  end 
  
  def self.all 
    @@all
  end 
  
  def print_songs 
   @songs.each do |instance|
     puts instance.name
   end
  end 
  
end 