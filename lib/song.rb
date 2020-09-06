class Song

  attr_accessor :name 
  attr_reader :artist, :genre

  @@all = []

  def initialize(name,artist=nil,genre=nil)
    @name = name
    self.artist = artist if artist
    self.genre = genre if genre
  end

  def self.all
    @@all
  end

  def self.destroy_all
    @@all.clear
  end

  def save
    @@all << self
  end

  def self.create(name)
    song = self.new(name)
    song.save
    song
  end

  def artist=(art_obj)
    @artist = art_obj
    art_obj.add_song(self)
  end

  def genre=(genre)
    @genre= genre
    if !(genre.songs.include?(self))
    genre.songs << self
  end
  end

  def self.find_by_name(name)
    self.all.find { |song| song.name == name}
  end

  def self.find_or_create_by_name(name)
    self.find_by_name(name) || self.create_by_name(name)
  end

  def self.create_by_name(name)
    create(name)
  end
  
  def self.new_from_filename(name)
    create_by_name(name)
  end
  
  def self.create_from_filename(name)
    new_from_filename(filename).tap{ |i| i.save }
  end
end