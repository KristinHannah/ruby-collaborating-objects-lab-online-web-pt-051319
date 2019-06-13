require "pry"
class MP3Importer
  attr_accessor :path
  @@all = []
  
  def initialize(path)
    @path = path
    @@all << path
  end 
  
  def import 
    files.each do |file|
      Song.new_by_filename(file)
    end 
  end 
  
  def files
    Dir.entries(self.path).select {|file| file.end_with?(".mp3")}
  end 
  
  
end 