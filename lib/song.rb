class Song
attr_accessor :name, :artist, :mp3importer

  def initialize(name)
    @name = name
  end

  def artist
    @artist
  end

  def self.new_by_filename(file)
    song = self.new(file)
    song.name = song.split(" - ")[1]
  end

end
