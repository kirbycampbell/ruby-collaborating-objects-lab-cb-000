class Artist
attr_accessor :name
@@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def save
    @@all << self
  end

  def add_song(song)
    self.songs << song
  end

   def self.find_or_create_by_name(name)
          if self.artist != nil
          self.artist.name = name
      else
          self.artist = Artist.new(name)
    end
  end

  def self.all
    @@all
  end

end
