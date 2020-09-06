class MusicLibraryController
  
  attr_accessor :path
  
  def initialize(path="./db/mp3s")
    importer = MusicImporter.new(path)
    importer.import
  end
  
  def call
    puts "Welcome to your music library!"
    puts "To list all of your songs, enter 'list songs'."
    puts "To list all of the artists in your library, enter 'list artists'."
    puts "To list all of the genres in your library, enter 'list genres'."
    puts "To list all of the songs by a particular artist, enter 'list artist'."
    puts "To list all of the songs of a particular genre, enter 'list genre'."
    puts "To play a song, enter 'play song'."
    puts "To quit, type 'exit'."
    puts "What would you like to do?"
    user = gets.chomp
    user1 = gets.chomp
    user2 = gets.chomp
    user3 = gets.chomp
  end 
  
  def list_songs
    counter = 1
    new_list = Song.all.sort_by do |song|
        song.name
      end
    new_list.each do |song_name|
      puts "#{counter}. #{song_name.artist.name} - #{song_name.name} - #{song_name.genre.name}"
      counter += 1
    end
      
  end
  
  def list_artists
    counter = 1
    new_list = Artist.all.sort_by do |artist|
        artist.name
      end
    new_list.each do |artist_name|
      puts "#{counter}. #{artist_name.name}"
      counter += 1
    end
  end
  
  def list_genres
    counter = 1
    new_list = Genre.all.sort_by do |genre|
        genre.name
      end
    new_list.each do |genre_name|
      puts "#{counter}. #{genre_name.name}"
      counter += 1
    end
  end
  
  def list_songs_by_artist
    puts "Please enter the name of an artist:"
    user_input = gets.chomp
    new_list = Artist.all.select do |artist|
        artist.song.name
      end
    Artist.all.select {|artist| }
  end
  
  def list_songs_by_genre
    
  end
  
  def play_song
    
  end
  
  
end