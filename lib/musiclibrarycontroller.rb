class MusicLibraryController
  
  attr_accessor :path
  
  def initialize(path="./db/mp3s")
    importer = MusicImporter.new(path)
    importer.import
  end
  
  def call
    puts "Welcome to your music library!"
    puts "To list all of yoursongs, enter 'list songs'."
  end 
  
  
end