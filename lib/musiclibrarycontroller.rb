class MusicLibraryController
  
  attr_accessor: path
  
  def initialize(path="./db/mp3s/")
    MusicImporter.new(path)
    MusicImporter.import
  end
  
  def call
  
  end 
  
  
end