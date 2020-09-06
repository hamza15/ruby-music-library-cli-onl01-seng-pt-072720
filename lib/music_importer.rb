class MusicImporter
  
  attr_accessor :path, :song
  @@all = []
  
  def initialize(path)
    @path = path
    @@all << self
  end
  
  def files
    @@all.collect do |song|
      song.name
    end
  end
  
  def self.import
    files.each do |song|
      Song.create_
  end
end