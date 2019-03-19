class Song
  attr_accessor :name, :artist
  @@all = []
  def initialize(name)
    @name = name
    @artist = artist
    @@all << self
  end
  def self.all 
    @@all 
  end
  def artist_name
    if self.artist 
      self.artist.name 
    end
  end
  def self.new_by_filename(filename)
    song_info = file.chomp(".mp3").split(" - ")
    song = Song.new(song_info[1])
    song.artist_name = song_info[0]
    song
  end
end