class Song
  attr_accessor :name, :artist
  
  def initialize(name)
    @name = name
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end
  def self.new_by_filename(file)
    song_info = file.split(" - ")[1]
    artistname = file.
    song.artist_name = song_info[0]
    song
  end
end