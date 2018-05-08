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
    @@all << self.name
  end

  def add_song(song)
    @songs << song
  end

  def find_or_create_by_name=(name)
      if self.artist != nil
          self.artist.name = name
      else
          nil
    end
  end

end
