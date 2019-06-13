require "pry"


class Song 
  attr_accessor :name, :artist 
  
  def initialize(name)
    @name = name
  end 
  
  def self.new_by_filename(file)
   # "Michael Jackson - Black or White - pop.mp3"
    artist,title = file.split(" - ")
    song = self.new(title)
    song.artist = Artist.find_or_create_by_name(artist)
    song.artist.add_song(song)
    song 
  end 
  
end 