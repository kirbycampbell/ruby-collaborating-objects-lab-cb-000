class Song
attr_accessor :name, :artist, :mp3importer

  def initialize(name)
    @name = name
  end

  def artist
    @artist
  end

  def self.new_by_filename(file_name)
    song = self.new
    song.name = file.split(" - ")[1]
  end

end
