class MP3Importer
  attr_accessor :path
@@files = []

  def initialize(path)
    @path = path
  end

  def files
    files = []
    Dir.new(self.path).each do |file|
      files << file
    end
    files
  end

  def import
    self.files.each do |filename|
      Song.new_by_filename(filename)
    end
  end

end
