class Song
attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def artist
    @artist
  end

  def new_by_filename(file)
  song = Song.self(file)
  end

end
