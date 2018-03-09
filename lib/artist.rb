class Artist
  attr_accessor :name, :songs, :genre
  @@allsongs = []
  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    @@allsongs << song
    song.artist = self
  end

  def add_song_by_name(songtitle)
    newsong = Song.new(songtitle)
    @songs << newsong
    @@allsongs << newsong
    newsong.artist = self
  end

  def self.song_count
    @@allsongs.length
  end
end
