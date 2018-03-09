class Artist
  attr_accessor :name, :songs, :genre
  @@song_count = []
  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    @@song_count << song
    song.artist = self
  end

  def add_song_by_name(songtitle)
    newsong = Song.new(songtitle)
    @songs << newsong
    @@song_count << newsong
    newsong.artist = self
  end

  def self.song_count
    @@song_count.length
  end
end
