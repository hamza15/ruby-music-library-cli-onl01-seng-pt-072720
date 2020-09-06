class MusicImporter
  
  attr_accessor :path
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
  
end