class Song
  attr_accessor :name, :songs, :artist

  def initialize(name)
    @name = name
    @artist = artist
  end

  def self.new_by_filename(filename)
    name = filename.split("-")[1].lstrip.rstrip
    song = Song.new(name)
    artist_name = filename.split("-")[0].rstrip
    song.artist = Artist.find_or_create_by_name(artist_name)
    song.artist.add_song(song)
    song
  end

end
